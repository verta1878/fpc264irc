;; ====================================================================
;; CYFOSSIL.SYS — FOSSIL Driver for Cyclades Cyclom-Y (CD1400)
;; ====================================================================
;; DOS device driver implementing FTS-0001 Rev 5 FOSSIL API over
;; Cirrus Logic CD1400 memory-mapped UART.
;;
;; Unlike standard 8250/16550 FOSSIL drivers that use IN/OUT to I/O
;; ports, this driver accesses the CD1400 through a shared memory
;; window (typically at D4000h). Each CD1400 chip handles 4 ports.
;;
;; Usage in CONFIG.SYS:
;;   DEVICE=CYFOSSIL.SYS [/Mssss] [/Pn] [/Bn]
;;     /Mssss  = memory segment (default D400)
;;     /Pn     = number of ports (auto-detect if omitted)
;;     /Bn     = base COM port number (default 3, i.e., COM3+)
;;
;; CD1400 registers are at (offset * 2) from chip base.
;; Chip n starts at membase + (n * 0x400).
;; ====================================================================

        .8086
        TITLE   CYFOSSIL — Cyclades CD1400 FOSSIL Driver

;; ====================================================================
;; CD1400 Register Offsets (multiplied by 2 for memory mapping)
;; ====================================================================

CyRegSize       EQU     0400h
CyGFRCR         EQU     080h            ; Global FW Rev Code (0x40*2)
CyCAR           EQU     0D0h            ; Channel Access (0x68*2)
CyCCR           EQU     00Ah            ; Channel Command (0x05*2)
CySRER          EQU     00Ch            ; Service Request Enable (0x06*2)
CyCOR1          EQU     010h            ; Channel Option 1 (0x08*2)
CyCOR2          EQU     012h            ; Channel Option 2 (0x09*2)
CyCOR3          EQU     014h            ; Channel Option 3 (0x0A*2)
CyCCSR          EQU     016h            ; Channel Control Status (0x0B*2)
CyRDSR          EQU     0C4h            ; Receive Data/Status (0x62*2)
CyTDR           EQU     0C6h            ; Transmit Data (0x63*2)
CyRDCR          EQU     01Ch            ; Receive Data Count (0x0E*2)
CyMSVR1         EQU     0D8h            ; Modem Signal Value 1 (0x6C*2)
CyMSVR2         EQU     0DAh            ; Modem Signal Value 2 (0x6D*2)
CyRBPR          EQU     0F0h            ; Receive Baud Prescaler (0x78*2)
CyRCOR          EQU     0F8h            ; Receive Clock Option (0x7C*2)
CyTBPR          EQU     0E4h            ; Transmit Baud Prescaler (0x72*2)
CyTCOR          EQU     0ECh            ; Transmit Clock Option (0x76*2)
CySCHR1         EQU     034h            ; Special Char 1 (0x1A*2)
CySCHR2         EQU     036h            ; Special Char 2 (0x1B*2)
CyHwReset       EQU     1400h           ; Hardware reset
CyClrIntr       EQU     1800h           ; Clear interrupt
CyEpldRev       EQU     1E00h           ; EPLD revision

; CD1400 Revision IDs
CD1400_REV_G    EQU     046h            ; 25 MHz
CD1400_REV_J    EQU     048h            ; 60 MHz

; CCR commands
CyCHAN_RESET    EQU     080h
CyCHIP_RESET    EQU     081h
CyENB_RCVR      EQU     012h            ; Chan ctl: enable TX+RX
CyENB_XMTR      EQU     018h

; COR1 bits
CyPARITY_NONE   EQU     000h
CyPARITY_O      EQU     0C0h
CyPARITY_E      EQU     040h
Cy_1_STOP       EQU     000h
Cy_2_STOP       EQU     008h
Cy_5_BITS       EQU     000h
Cy_6_BITS       EQU     001h
Cy_7_BITS       EQU     002h
Cy_8_BITS       EQU     003h

; CCSR bits
CyRxEN          EQU     080h
CyTxEN          EQU     008h

; MSVR bits
CyDSR           EQU     080h
CyCTS           EQU     040h
CyRI            EQU     020h
CyDCD           EQU     010h
CyDTR           EQU     002h
CyRTS           EQU     001h

; RDSR status bits
CyBREAK         EQU     008h
CyPARITY_ERR    EQU     004h
CyFRAME_ERR     EQU     002h
CyOVERRUN_ERR   EQU     001h

; Max config
MAX_PORTS       EQU     32
MAX_CHIPS       EQU     8
PORTS_PER_CHIP  EQU     4
FIFO_SIZE       EQU     12              ; CD1400 has 12-byte FIFO

; FOSSIL constants
FOSSIL_SIG      EQU     1954h
FOSSIL_MAXFN    EQU     01Bh
FOSSIL_REV      EQU     5


;; ====================================================================
;; DOS Device Driver Header
;; ====================================================================

_TEXT   SEGMENT BYTE PUBLIC 'CODE'
        ASSUME  CS:_TEXT, DS:_TEXT

        ORG     0

DevHeader:
        DD      -1
        DW      8000h                   ; Character device
        DW      OFFSET Strategy
        DW      OFFSET Interrupt
        DB      'CYFSSL$ '

;; ====================================================================
;; Data
;; ====================================================================

MemSeg          DW      0D400h          ; Card memory segment
MemOff          DW      0               ; Always 0
NumPorts        DW      0               ; Detected port count
NumChips        DW      0               ; Detected chip count
BaseCOM         DW      3               ; First COM port number (COM3)
ChipRevs        DB      MAX_CHIPS DUP (0)   ; Revision per chip
Is60MHz         DB      MAX_CHIPS DUP (0)   ; Non-zero if 60 MHz

; Per-port state
PortActive      DB      MAX_PORTS DUP (0)   ; FOSSIL initialized
PortChip        DB      MAX_PORTS DUP (0)   ; Which chip (0-7)
PortChan        DB      MAX_PORTS DUP (0)   ; Which channel (0-3)

; Saved INT 14h vector
OldInt14Off     DW      0
OldInt14Seg     DW      0

; Strategy packet pointer
RPOff           DW      0
RPSeg           DW      0

; Baud rate tables — 25 MHz clock (Rev G)
; Index: 0=50, 1=75, 2=110, ..., 17=115200
; Values: clock option (xCOR) and baud period register (xBPR)
BaudCO25        DB      004h,004h,004h,004h,004h,004h,003h,003h
                DB      003h,002h,002h,002h,001h,001h,000h,000h
                DB      000h,000h
BaudBPR25       DB      0F5h,0A3h,06Fh,05Ch,051h,041h,0F5h,0A3h
                DB      051h,0A3h,06Dh,051h,0A3h,051h,0A3h,051h
                DB      036h,01Bh

; Baud rate tables — 60 MHz clock (Rev J)
BaudCO60        DB      000h,000h,000h,004h,004h,004h,004h,004h
                DB      003h,003h,003h,002h,002h,001h,001h,000h
                DB      000h,000h,000h,000h
BaudBPR60       DB      000h,082h,021h,0FFh,0DBh,0C3h,092h,062h
                DB      0C3h,062h,041h,0C3h,062h,0C3h,062h,0C3h
                DB      082h,062h,041h,021h

; FOSSIL baud rate index mapping (bits 7:5 of fn 00h parameter)
; 000=19200(idx 13), 001=38400(14), 010=300(6), 011=600(7)
; 100=1200(8), 101=2400(10), 110=4800(11), 111=9600(12)
FossilBaudMap   DB      13, 14, 6, 7, 8, 10, 11, 12

FOSSIL_ID       DB      'CYFOSSIL — Cyclades CD1400 FOSSIL Driver', 0
FOSSIL_IDLEN    EQU     $ - FOSSIL_ID


;; ====================================================================
;; Memory-mapped register access macros
;; ====================================================================
;; CyRead: read register from chip
;;   In:  BL = chip number, DI = register offset
;;   Out: AL = value
;; CyWrite: write register on chip
;;   In:  BL = chip number, DI = register offset, AL = value

CyRead:
        push    es
        push    bx
        push    di
        mov     es, cs:[MemSeg]
        xor     bh, bh
        shl     bx, 1
        shl     bx, 1                  ; BX = chip * 4
        ; BX * 256 = chip * 0x400 (CyRegSize)
        mov     cl, 6
        shl     bx, cl                 ; BX = chip * 0x400
        add     di, bx
        mov     al, es:[di]
        pop     di
        pop     bx
        pop     es
        ret

CyWrite:
        push    es
        push    bx
        push    di
        push    ax
        mov     es, cs:[MemSeg]
        xor     bh, bh
        shl     bx, 1
        shl     bx, 1
        mov     cl, 6
        shl     bx, cl
        add     di, bx
        pop     ax
        mov     es:[di], al
        pop     di
        pop     bx
        pop     es
        ret

;; Select a channel on a chip
;; In: BL = chip, CL = channel (0-3)
CySelChan:
        push    di
        push    ax
        mov     di, CyCAR
        mov     al, cl
        call    CyWrite
        pop     ax
        pop     di
        ret


;; ====================================================================
;; INT 14h Handler
;; ====================================================================

Int14Handler PROC FAR
        sti
        cld
        push    ds
        push    cs
        pop     ds

        ; Map DX (port number) to our port range
        ; DX = 0-based COM port. Our ports start at BaseCOM-1.
        sub     dx, cs:[BaseCOM]
        inc     dx                      ; Adjust to 0-based within our range
        dec     dx
        cmp     dx, cs:[NumPorts]
        jae     i14Chain

        ; Dispatch on AH
        cmp     ah, FOSSIL_MAXFN
        ja      i14Chain

        push    bx
        push    cx
        push    si
        push    di

        ; Get chip/channel for this port
        mov     si, dx
        mov     bl, cs:[PortChip + si]
        mov     cl, cs:[PortChan + si]

        ; Dispatch table
        mov     al, ah
        xor     ah, ah
        shl     ax, 1
        mov     si, ax
        jmp     word ptr cs:[FnTable + si]

i14Chain:
        pop     ds
        jmp     dword ptr cs:[OldInt14Off]

i14Exit:
        pop     di
        pop     si
        pop     cx
        pop     bx
        pop     ds
        iret
Int14Handler ENDP


;; ====================================================================
;; Function Table
;; ====================================================================

FnTable LABEL WORD
        DW      OFFSET cyFn00           ; Set baud/line
        DW      OFFSET cyFn01           ; TX char (wait)
        DW      OFFSET cyFn02           ; RX char (wait)
        DW      OFFSET cyFn03           ; Port status
        DW      OFFSET cyFn04           ; Init FOSSIL
        DW      OFFSET cyFn05           ; Deinit FOSSIL
        DW      OFFSET cyFnStub         ; 06h reserved
        DW      OFFSET cyFnStub         ; 07h reserved
        DW      OFFSET cyFn08           ; Flush output
        DW      OFFSET cyFn09           ; Purge output
        DW      OFFSET cyFn0A           ; Purge input
        DW      OFFSET cyFn0B           ; TX no-wait
        DW      OFFSET cyFn0C           ; Peek input
        DW      OFFSET cyFn0D           ; Kbd read
        DW      OFFSET cyFn0E           ; Kbd peek
        DW      OFFSET cyFn0F           ; Flow control
        DW      OFFSET cyFnStub         ; 10h ctrl-C/K
        DW      OFFSET cyFn11           ; Set cursor
        DW      OFFSET cyFn12           ; Get cursor
        DW      OFFSET cyFn13           ; ANSI write
        DW      OFFSET cyFnStub         ; 14h watchdog
        DW      OFFSET cyFnStub         ; 15h write kbd
        DW      OFFSET cyFn16           ; Block read
        DW      OFFSET cyFn17           ; Block write
        DW      OFFSET cyFn18           ; Break
        DW      OFFSET cyFn19           ; Driver info
        DW      OFFSET cyFnStub         ; 1Ah hook
        DW      OFFSET cyFnStub         ; 1Bh unhook

cyFnStub:
        jmp     i14Exit


;; ====================================================================
;; cyStatus — build AX status word (AH=line, AL=modem)
;; In: BL=chip, CL=channel
;; Out: AX=status
;; ====================================================================

cyStatus:
        push    bx
        push    cx
        push    di
        call    CySelChan

        ; Read CCSR for line status approximation
        mov     di, CyCCSR
        call    CyRead
        mov     ah, al
        ; Map: bit 3 (TxEN) → THRE-like, bit 7 (RxEN) → DR-like
        xor     ah, ah
        test    al, CyTxEN
        jz      csNoThre
        or      ah, 20h                 ; THRE
csNoThre:

        ; Read MSVR1 for modem signals
        mov     di, CyMSVR1
        call    CyRead
        ; Map CD1400 signals to standard MSR format
        ; CD1400: DSR=80, CTS=40, RI=20, DCD=10
        ; Standard MSR: CTS=10, DSR=20, RI=40, DCD=80
        xor     ch, ch
        test    al, CyCTS
        jz      csNoCTS
        or      ch, 10h                 ; MSR CTS
csNoCTS:
        test    al, CyDSR
        jz      csNoDSR
        or      ch, 20h                 ; MSR DSR
csNoDSR:
        test    al, CyRI
        jz      csNoRI
        or      ch, 40h                 ; MSR RI
csNoRI:
        test    al, CyDCD
        jz      csNoDCD
        or      ch, 80h                 ; MSR DCD
csNoDCD:
        mov     al, ch                  ; AL = modem status

        pop     di
        pop     cx
        pop     bx
        ret


;; ====================================================================
;; 00h — Set Baud Rate / Line Parameters
;; ====================================================================

cyFn00:
        push    ax                      ; Save original AL
        call    CySelChan

        ; Decode baud from bits 7:5
        pop     ax
        push    ax
        mov     cl, 5
        shr     al, cl
        and     al, 07h
        xor     ah, ah
        mov     si, ax
        mov     al, cs:[FossilBaudMap + si]  ; Get baud index

        ; Look up CO and BPR from tables
        xor     ah, ah
        mov     si, ax
        ; Check if this chip is 60 MHz
        push    bx
        xor     bh, bh
        cmp     byte ptr cs:[Is60MHz + bx], 0
        pop     bx
        jne     cyFn00_60

        ; 25 MHz tables
        mov     ah, cs:[BaudCO25 + si]   ; Clock option
        mov     al, cs:[BaudBPR25 + si]  ; Baud period
        jmp     cyFn00_set

cyFn00_60:
        mov     ah, cs:[BaudCO60 + si]
        mov     al, cs:[BaudBPR60 + si]

cyFn00_set:
        ; Write baud rate registers
        push    ax
        push    di
        mov     di, CyTCOR
        mov     al, ah                  ; Clock option → TCOR
        call    CyWrite
        mov     di, CyRCOR
        call    CyWrite                 ; Same for receive
        pop     di
        pop     ax

        push    di
        mov     di, CyTBPR
        call    CyWrite                 ; BPR → TBPR
        mov     di, CyRBPR
        call    CyWrite                 ; Same for receive
        pop     di

        ; Set COR1 from bits 4:0
        pop     ax                      ; Original AL
        push    ax
        and     al, 1Fh
        ; Map FOSSIL COR1 bits to CD1400 COR1
        ; FOSSIL: [4:3]=parity, [2]=stop, [1:0]=data
        ; CD1400 COR1: [7:6]=parity, [3:2]=stop, [1:0]=data
        push    cx
        mov     ch, al
        xor     cl, cl

        ; Data bits — same encoding
        mov     cl, ch
        and     cl, 03h                 ; Data bits direct

        ; Stop bits
        test    ch, 04h
        jz      cyFn00_1stop
        or      cl, Cy_2_STOP
        jmp     cyFn00_par
cyFn00_1stop:
        or      cl, Cy_1_STOP

cyFn00_par:
        ; Parity: FOSSIL [4:3]: 00=none, 01=odd, 11=even
        mov     al, ch
        and     al, 18h
        cmp     al, 00h
        je      cyFn00_pnone
        cmp     al, 18h
        je      cyFn00_peven
        ; Odd
        or      cl, CyPARITY_O
        jmp     cyFn00_pcor
cyFn00_peven:
        or      cl, CyPARITY_E
        jmp     cyFn00_pcor
cyFn00_pnone:
        or      cl, CyPARITY_NONE

cyFn00_pcor:
        mov     al, cl
        pop     cx
        push    di
        mov     di, CyCOR1
        call    CyWrite
        pop     di

        ; Tell CD1400 to re-read COR registers
        push    di
        mov     di, CyCCR
        mov     al, 042h                ; COR_CHANGE | COR1ch
        call    CyWrite
        pop     di

        pop     ax                      ; Clean stack
        call    cyStatus
        jmp     i14Exit


;; ====================================================================
;; 01h — TX Char (wait)
;; ====================================================================

cyFn01:
        push    ax
        call    CySelChan
        pop     ax
        mov     ah, al                  ; Save char in AH

cyFn01_wait:
        ; Check if TX FIFO has space (CCSR TxEN + check TDR)
        push    di
        mov     di, CyCCSR
        call    CyRead
        pop     di
        test    al, CyTxEN
        jz      cyFn01_wait

        ; Write byte
        push    di
        mov     di, CyTDR
        mov     al, ah
        call    CyWrite
        pop     di

        call    cyStatus
        jmp     i14Exit


;; ====================================================================
;; 02h — RX Char (wait)
;; ====================================================================

cyFn02:
        call    CySelChan

cyFn02_wait:
        ; Check RDCR for data count
        push    di
        mov     di, CyRDCR
        call    CyRead
        pop     di
        test    al, al
        jz      cyFn02_wait

        ; Read byte from RDSR
        push    di
        mov     di, CyRDSR
        call    CyRead
        pop     di
        xor     ah, ah                  ; Success
        jmp     i14Exit


;; ====================================================================
;; 03h — Port Status
;; ====================================================================

cyFn03:
        call    cyStatus
        jmp     i14Exit


;; ====================================================================
;; 04h — Initialize FOSSIL
;; ====================================================================

cyFn04:
        push    dx
        call    CySelChan

        ; Reset channel
        push    di
        mov     di, CyCCR
        mov     al, CyCHAN_RESET
        call    CyWrite
        pop     di

        ; Wait for CCR to clear
        push    cx
        mov     cx, 1000
cyFn04_rw:
        push    di
        mov     di, CyCCR
        call    CyRead
        pop     di
        test    al, al
        jz      cyFn04_rd
        loop    cyFn04_rw
cyFn04_rd:
        pop     cx

        ; Set 8N1 default
        push    di
        mov     di, CyCOR1
        mov     al, Cy_8_BITS or Cy_1_STOP or CyPARITY_NONE
        call    CyWrite
        pop     di

        ; Set COR2 — enable CTS/RTS auto flow
        push    di
        mov     di, CyCOR2
        mov     al, 004h                ; RtsAO
        call    CyWrite
        pop     di

        ; Set COR3 — receive threshold
        push    di
        mov     di, CyCOR3
        mov     al, FIFO_SIZE - 2       ; Threshold = FIFO-2
        call    CyWrite
        pop     di

        ; Tell chip to re-read COR
        push    di
        mov     di, CyCCR
        mov     al, 04Eh                ; COR_CHANGE | all CORs
        call    CyWrite
        pop     di

        ; Enable transmitter and receiver
        push    di
        mov     di, CyCCR
        mov     al, CyENB_RCVR or CyENB_XMTR
        call    CyWrite
        pop     di

        ; Raise DTR + RTS
        push    di
        mov     di, CyMSVR1
        mov     al, CyDTR or CyRTS
        call    CyWrite
        mov     di, CyMSVR2
        call    CyWrite
        pop     di

        ; Mark port active
        pop     dx
        mov     si, dx
        sub     si, cs:[BaseCOM]
        mov     cs:[PortActive + si], 1

        ; Return FOSSIL signature
        mov     ax, FOSSIL_SIG
        mov     bx, (FOSSIL_REV SHL 8) OR FOSSIL_MAXFN
        jmp     i14Exit


;; ====================================================================
;; 05h — Deinit FOSSIL
;; ====================================================================

cyFn05:
        call    CySelChan

        ; Drop DTR/RTS
        push    di
        mov     di, CyMSVR1
        xor     al, al
        call    CyWrite
        mov     di, CyMSVR2
        call    CyWrite
        pop     di

        ; Disable TX/RX
        push    di
        mov     di, CyCCR
        mov     al, 005h                ; DIS_RCVR | DIS_XMTR
        call    CyWrite
        pop     di

        jmp     i14Exit


;; ====================================================================
;; 08h — Flush Output (wait for TX empty)
;; ====================================================================

cyFn08:
        call    CySelChan
        push    cx
        mov     cx, 0FFFFh
cyFn08_w:
        push    di
        mov     di, CyCCSR
        call    CyRead
        pop     di
        test    al, CyTxEN
        jnz     cyFn08_d
        loop    cyFn08_w
cyFn08_d:
        pop     cx
        jmp     i14Exit


;; ====================================================================
;; 09h/0Ah — Purge Output/Input
;; ====================================================================

cyFn09:
        call    CySelChan
        ; Flush TX FIFO via CCR
        push    di
        mov     di, CyCCR
        mov     al, 082h                ; FlushTransFIFO
        call    CyWrite
        pop     di
        jmp     i14Exit

cyFn0A:
        call    CySelChan
        ; Drain RX by reading until RDCR=0
        push    cx
        mov     cx, 256
cyFn0A_d:
        push    di
        mov     di, CyRDCR
        call    CyRead
        pop     di
        test    al, al
        jz      cyFn0A_done
        push    di
        mov     di, CyRDSR
        call    CyRead
        pop     di
        loop    cyFn0A_d
cyFn0A_done:
        pop     cx
        jmp     i14Exit


;; ====================================================================
;; 0Bh — TX No-Wait
;; ====================================================================

cyFn0B:
        push    ax
        call    CySelChan
        pop     ax
        mov     ah, al

        ; Check TX ready
        push    di
        mov     di, CyCCSR
        call    CyRead
        pop     di
        test    al, CyTxEN
        jz      cyFn0B_full

        push    di
        mov     di, CyTDR
        mov     al, ah
        call    CyWrite
        pop     di
        mov     ax, 1
        jmp     i14Exit

cyFn0B_full:
        xor     ax, ax
        jmp     i14Exit


;; ====================================================================
;; 0Ch — Peek Input (non-destructive)
;; ====================================================================

cyFn0C:
        call    CySelChan
        push    di
        mov     di, CyRDCR
        call    CyRead
        pop     di
        test    al, al
        jz      cyFn0C_none

        ; Data available — read it (consuming, since CD1400
        ; doesn't support non-destructive peek)
        push    di
        mov     di, CyRDSR
        call    CyRead
        pop     di
        xor     ah, ah
        jmp     i14Exit

cyFn0C_none:
        mov     ax, 0FFFFh
        jmp     i14Exit


;; ====================================================================
;; 0Dh/0Eh — Keyboard Read/Peek
;; ====================================================================

cyFn0D:
        mov     ah, 01h
        int     16h
        jz      cyFnNoKey
        mov     ah, 00h
        int     16h
        jmp     i14Exit
cyFn0E:
        mov     ah, 01h
        int     16h
        jz      cyFnNoKey
        jmp     i14Exit
cyFnNoKey:
        mov     ax, 0FFFFh
        jmp     i14Exit


;; ====================================================================
;; 0Fh — Flow Control
;; ====================================================================

cyFn0F:
        push    ax
        call    CySelChan
        pop     ax
        ; Set COR2 based on flow control flags
        push    di
        mov     di, CyCOR2
        xor     ah, ah
        test    al, 02h                 ; CTS/RTS hardware flow
        jz      cyFn0F_noHW
        or      ah, 006h                ; RtsAO + CtsAE
cyFn0F_noHW:
        mov     al, ah
        call    CyWrite
        pop     di

        ; Re-read COR
        push    di
        mov     di, CyCCR
        mov     al, 044h                ; COR_CHANGE | COR2ch
        call    CyWrite
        pop     di
        jmp     i14Exit


;; ====================================================================
;; 11h/12h/13h — Cursor/ANSI (INT 10h passthrough)
;; ====================================================================

cyFn11:
        push    bx
        mov     ah, 02h
        xor     bh, bh
        int     10h
        pop     bx
        jmp     i14Exit
cyFn12:
        push    bx
        mov     ah, 03h
        xor     bh, bh
        int     10h
        pop     bx
        jmp     i14Exit
cyFn13:
        mov     ah, 0Eh
        xor     bh, bh
        int     10h
        jmp     i14Exit


;; ====================================================================
;; 16h — Block Read
;; ====================================================================

cyFn16:
        call    CySelChan
        xor     ax, ax

cyFn16_loop:
        cmp     ax, cx
        jae     cyFn16_done
        push    di
        mov     di, CyRDCR
        push    ax
        call    CyRead
        mov     ah, al
        pop     ax
        pop     di
        test    ah, ah
        jz      cyFn16_done

        push    di
        push    ax
        mov     di, CyRDSR
        call    CyRead
        stosb                           ; Store to ES:DI
        pop     ax
        pop     di
        inc     ax
        jmp     cyFn16_loop

cyFn16_done:
        jmp     i14Exit


;; ====================================================================
;; 17h — Block Write
;; ====================================================================

cyFn17:
        call    CySelChan
        push    si
        mov     si, di                  ; SI = source
        xor     ax, ax

cyFn17_loop:
        cmp     ax, cx
        jae     cyFn17_done

        ; Wait for TX ready
        push    di
        push    ax
        mov     di, CyCCSR
        call    CyRead
        mov     ah, al
        pop     ax
        pop     di
        test    ah, CyTxEN
        jz      cyFn17_done

        push    di
        push    ax
        mov     di, CyTDR
        mov     al, es:[si]
        call    CyWrite
        pop     ax
        pop     di
        inc     si
        inc     ax
        jmp     cyFn17_loop

cyFn17_done:
        pop     si
        jmp     i14Exit


;; ====================================================================
;; 18h — Break Signal
;; ====================================================================

cyFn18:
        push    ax
        call    CySelChan
        pop     ax
        test    al, 01h
        jz      cyFn18_off
        ; Send break — embedded transmit command
        push    di
        mov     di, CyCCR
        mov     al, 021h                ; SEND_SPEC_1 (break)
        call    CyWrite
        pop     di
        jmp     i14Exit
cyFn18_off:
        ; Break off — stop sending
        push    di
        mov     di, CyCCR
        mov     al, 022h                ; SEND_SPEC_2 (stop break)
        call    CyWrite
        pop     di
        jmp     i14Exit


;; ====================================================================
;; 19h — Driver Info
;; ====================================================================

cyFn19:
        call    CySelChan
        cmp     cx, 19
        jb      cyFn19_short

        mov     word ptr es:[di], 19
        mov     byte ptr es:[di+2], FOSSIL_REV
        mov     byte ptr es:[di+3], 1
        mov     word ptr es:[di+4], OFFSET FOSSIL_ID
        mov     word ptr es:[di+6], cs
        mov     word ptr es:[di+8], 4096  ; RX buf (virtual)
        mov     word ptr es:[di+10], 0    ; RX count
        mov     word ptr es:[di+12], 4096
        mov     word ptr es:[di+14], 4096
        ; Screen size from BIOS
        push    bx
        mov     ah, 0Fh
        int     10h
        mov     es:[di+16], ah          ; Columns
        push    es
        push    di
        mov     ax, 0040h
        mov     es, ax
        mov     al, es:[0084h]
        inc     al
        pop     di
        pop     es
        mov     es:[di+17], al          ; Rows
        pop     bx
        mov     byte ptr es:[di+18], 0  ; Baud code
        mov     ax, 19
        jmp     i14Exit

cyFn19_short:
        xor     ax, ax
        jmp     i14Exit


;; ====================================================================
;; DOS Driver Strategy/Interrupt (INIT only)
;; ====================================================================

Strategy PROC FAR
        mov     cs:[RPOff], bx
        mov     cs:[RPSeg], es
        ret
Strategy ENDP

Interrupt PROC FAR
        push    ds
        push    es
        push    ax
        push    bx
        push    cx
        push    dx
        push    si
        push    di
        push    cs
        pop     ds

        les     bx, dword ptr cs:[RPOff]
        mov     al, es:[bx+2]
        cmp     al, 0
        je      doInit
        mov     word ptr es:[bx+3], 0100h
        jmp     intDone

doInit:
        ; Detect CD1400 chips
        xor     bx, bx                  ; Chip counter
        mov     word ptr cs:[NumChips], 0
        mov     word ptr cs:[NumPorts], 0

detLoop:
        cmp     bx, MAX_CHIPS
        jae     detDone
        push    bx
        mov     bl, byte ptr cs:[NumChips]  ; Chip index for CyRead
        mov     di, CyGFRCR
        call    CyRead
        pop     bx

        cmp     al, 0
        je      detDone
        cmp     al, 0FFh
        je      detDone

        ; Valid chip found
        mov     si, bx
        mov     cs:[ChipRevs + si], al
        cmp     al, CD1400_REV_J
        jne     det25
        mov     cs:[Is60MHz + si], 1
det25:
        ; Set up 4 ports for this chip
        push    cx
        xor     cx, cx
detPort:
        cmp     cx, PORTS_PER_CHIP
        jae     detPortDone
        mov     si, cs:[NumPorts]
        mov     cs:[PortChip + si], bl
        mov     cs:[PortChan + si], cl
        inc     word ptr cs:[NumPorts]
        inc     cx
        jmp     detPort
detPortDone:
        pop     cx

        inc     word ptr cs:[NumChips]
        inc     bx
        jmp     detLoop

detDone:
        ; Hook INT 14h
        push    es
        push    bx
        mov     ax, 3514h
        int     21h
        mov     cs:[OldInt14Off], bx
        mov     cs:[OldInt14Seg], es
        pop     bx
        pop     es

        push    ds
        push    dx
        mov     ax, 2514h
        mov     dx, OFFSET Int14Handler
        push    cs
        pop     ds
        int     21h
        pop     dx
        pop     ds

        ; Print banner
        push    dx
        mov     ah, 09h
        mov     dx, OFFSET InitBanner
        int     21h
        pop     dx

        ; Set end-of-resident
        les     bx, dword ptr cs:[RPOff]
        mov     word ptr es:[bx+0Eh], OFFSET EndResident
        mov     word ptr es:[bx+10h], cs
        mov     word ptr es:[bx+3], 0100h

intDone:
        pop     di
        pop     si
        pop     dx
        pop     cx
        pop     bx
        pop     ax
        pop     es
        pop     ds
        ret
Interrupt ENDP

InitBanner      DB      'CYFOSSIL — Cyclades CD1400 FOSSIL Driver', 0Dh, 0Ah
                DB      'Clean-room from Linux kernel GPL headers', 0Dh, 0Ah, '$'

EndResident     LABEL BYTE

_TEXT   ENDS
        END
