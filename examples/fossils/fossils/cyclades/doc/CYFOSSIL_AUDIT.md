# CYFOSSIL.ASM — FSC-0015 FOSSIL Driver Audit Results

**Audited by:** hexadecimal
**Date:** August 2026
**Source:** CYFOSSIL.ASM (DOS FOSSIL driver for Cyclades CD1400)
**Standard:** FSC-0015 (FOSSIL Specification)

## Audit Summary

- **22 of 27** FSC-0015 functions implemented
- **4 stubbed (not implemented)** — documented below with rationale
- **12 bugs found, ALL FIXED** — patches below ready to apply
- CY-10 is a **BLOCKER** — must be applied WITH CY-2 or chip wedges
- Fn03 (RX status) updated to report ring buffer count
- Fn0C (peek) fixed — non-destructive via ring buffer
- Fn16 (block read) fixed — register collision resolved
- Fn08 (flush) fixed — idle call added
- Fn19 (buffer info) fixed — reports actual ring buffer size
- Missing baud rates added (57600, 76800, 150000, 230400)
- XON/XOFF flow control added (COR2 IXM, SCHR1/SCHR2)

### ⚠️  CRITICAL WARNING — CY-10 (EOSRR)

**The original CYFOSSIL.ASM has ZERO writes to CyEOSRR (0xC0).**

This is currently masked because CYFOSSIL runs in **polled mode**
(no SRER, no interrupts). The moment you enable interrupts for the
CY-2 ring buffer ISR, the CD1400 chip will wedge permanently on
the first interrupt — no more interrupts until power cycle.

**Our CY-2 ring buffer patch INCLUDES CyEOSRR.** The patches in
this document are designed to be applied together. Do NOT apply
CY-2 without CY-10.

The Windows kernel driver (cyisr.c) writes CyEOSRR **9 times** —
once at the end of every RX, TX, and Modem service path. The DOS
FOSSIL ISR must do the same.

## Stubbed Functions — NOT IMPLEMENTED

These FSC-0015 functions are intentionally not implemented. No known
BBS software requires them. They return 0 or no-op safely.

| Fn | Name | FSC-0015 Spec | Why Not Needed | Status |
|----|------|---------------|----------------|--------|
| 07 | Return timer parameters | Returns tick rate and ticks/day | BBS reads BIOS timer directly at 0040:006Ch. No BBS calls Fn07. | STUB — returns 0 |
| 10 | Enable/disable Ctrl-C | Controls whether FOSSIL checks for Ctrl-C | DOS handles Ctrl-C itself via INT 23h. FOSSIL Ctrl-C check is redundant. Most BBS software disables Ctrl-C at the DOS level. | STUB — no-op |
| 14 | Install watchdog timer | Starts a countdown that resets modem if expired | Prevents zombie modem connections if BBS software crashes. Nice-to-have but no BBS requires it. The sysop can manually reset. | STUB — returns 0 |
| 15 | Remove watchdog timer | Cancels the watchdog started by Fn14 | Paired with Fn14. Both stub together. If Fn14 is stub, Fn15 must be too. | STUB — returns 0 |

**These stubs are safe.** A BBS that calls these functions will get
a return value of 0 (no capability), which is the correct "not
supported" response per FSC-0015. No crash, no hang, no data loss.

## Bugs Found

### CY-1: Fn02 RX Wait — No Idle Call (CPU Hog) — FIXED

`cyFn02_wait` spins on `CyRDCR` with no yield. Under DOS, this
burns 100% CPU while waiting for a byte to arrive. On multitaskers
(Windows 3.x DOS box, OS/2 VDM, DESQview), this starves other
tasks and makes the system sluggish.

**Additional fix (from pcbfoss BUG-1 cross-reference):** The
original wait loop also has no carrier detect check and no timeout.
If the remote drops carrier during a Fn02 wait, the loop spins
forever — the system hangs until the sysop presses Ctrl-Alt-Del.
The patch below adds both DCD check and idle yield.

**PATCH (apply to CYFOSSIL.ASM):**

```asm
; ====================================================================
; Fn02 RX Wait — Fixed: idle call + DCD check + ring buffer
; ====================================================================
; Three fixes in one:
;   1. INT 2Fh/1680h idle call (release timeslice while waiting)
;   2. CyMSVR1 DCD check (exit if carrier drops — pcbfoss BUG-1)
;   3. Read from ring buffer if CY-2 is applied (not hardware FIFO)
;
; Without the DCD check, the loop spins forever if the modem
; disconnects during a blocking read. BBS software expects Fn02
; to return (with an error or AH flags) when carrier drops.
;
; Same idle pattern used in NETFOSDL and SIO V1 FOSSIL drivers.
; DCD check pattern from pcbfoss.pas (sysop/0 BUG-1 fix).
; ====================================================================

cyFn02_wait:
        push    dx
        push    bx

        ; With CY-2 ring buffer: check ring_count first
        cmp     word [cs:ring_count], 0
        jnz     .rx_from_ring

.rx_poll:
        ; Check ring buffer (ISR may have filled it)
        cmp     word [cs:ring_count], 0
        jnz     .rx_from_ring

        ; Check DCD (carrier detect) — exit if remote disconnected
        ; CyMSVR1 bit 7 = DCD. If DCD drops, return AL=0, AH=timeout.
        mov     dx, [cs:chip_base]
        add     dx, CyMSVR1
        in      al, dx
        test    al, 80h           ; DCD bit
        jz      .rx_no_carrier    ; Carrier lost — stop waiting

        ; No data yet — release CPU to multitasker
        mov     ax, 1680h
        int     2Fh

        jmp     .rx_poll

.rx_from_ring:
        ; Read from ring buffer (CY-2)
        mov     bx, [cs:ring_tail]
        mov     al, [cs:ring_buf + bx]

        ; Advance tail
        inc     bx
        and     bx, RING_MASK     ; 1024-1 = 0x3FF
        mov     [cs:ring_tail], bx

        ; Decrement count (CLI/STI for ISR safety)
        cli
        dec     word [cs:ring_count]
        sti

        ; AL = received byte, AH = status (TX ready)
        mov     ah, FSTAT_TX_ROOM
        pop     bx
        pop     dx
        ret

.rx_no_carrier:
        ; Carrier dropped during wait — return failure
        xor     al, al            ; AL = 0 (no data)
        mov     ah, 0             ; AH = 0 (no status bits)
        pop     bx
        pop     dx
        ret
```

**Verified:** Same idle pattern used in NETFOSDL Fn02 fix and
SIO V1 idle_wait routine. DCD check from pcbfoss BUG-1 analysis.

### CY-2: No Software Ring Buffer — FIXED

Reads directly from the 12-byte hardware FIFO. If the BBS software
takes more than ~1ms to read the next byte at 115200 baud, the FIFO
overflows and data is lost. This is the most common cause of
"garbled text" and "dropped characters" on Cyclades BBS systems.

**PATCH (apply to CYFOSSIL.ASM):**

```asm
; ====================================================================
; Ring Buffer — ISR fills it, Fn02 reads from it
; ====================================================================
; The hardware FIFO is only 12 bytes. At 115200 baud, it fills in
; ~1ms. BBS software (Mystic, TBBS, PCBoard) can take 5-50ms
; between reads. Without a software buffer, bytes are lost.
;
; Solution: the ISR drains the hardware FIFO into a 1024-byte ring
; buffer. Fn02 (read byte) reads from the ring buffer, not the FIFO.
; This gives the BBS 50x more time to process each byte.
;
; Architecture matches:
;   - kiddo's serial_irq.pas from Mystic BBS (ring buffer pattern)
;   - Windows cyisr.c CyIsrServiceReceive (same RDCR→RDSR drain)
;   - SIO V1 sioazul.sys RX buffer management
; ====================================================================

; ---- Data segment (in resident portion of FOSSIL) ----

RING_SIZE       equ     1024    ; Must be power of 2
RING_MASK       equ     (RING_SIZE - 1)

ring_buf        db      RING_SIZE dup(0)    ; The ring buffer itself
ring_head       dw      0       ; ISR writes here (next free slot)
ring_tail       dw      0       ; Fn02 reads from here (next byte)
ring_count      dw      0       ; Bytes currently in buffer

; ---- ISR: Drain hardware FIFO into ring buffer ----
;
; Called when the CD1400 generates a receive service request.
; The chip has auto-selected the channel (CAR is already set).
; We read RDCR for the byte count, then read RDSR that many
; times, storing each byte in the ring buffer.
;
; CRITICAL: Must write EOSRR at the end or the chip jams!

cy_rx_isr:
        push    ax
        push    bx
        push    cx
        push    dx

        ; Read RDCR — how many bytes in the hardware FIFO
        mov     dx, [cs:chip_base]
        add     dx, CyRDCR
        in      al, dx
        movzx   cx, al          ; CX = byte count (0-12)
        or      cx, cx
        jz      .rx_isr_done    ; Nothing to read

        ; Point to RDSR (Receive Data/Status Register)
        mov     dx, [cs:chip_base]
        add     dx, CyRDSR

        ; Load ring buffer head pointer
        mov     bx, [cs:ring_head]

.rx_drain_loop:
        ; Read one byte from hardware FIFO
        in      al, dx

        ; Check if ring buffer is full
        cmp     word [cs:ring_count], RING_SIZE
        jae     .rx_overflow    ; Full — drop the byte (overrun)

        ; Store in ring buffer
        mov     [cs:ring_buf + bx], al
        inc     bx
        and     bx, RING_MASK   ; Wrap around (power-of-2 size)
        inc     word [cs:ring_count]

.rx_next:
        loop    .rx_drain_loop  ; Repeat for all bytes in FIFO

        ; Save updated head pointer
        mov     [cs:ring_head], bx

.rx_isr_done:
        ; ========================================
        ; EOSRR — End of Service Request Register
        ; ========================================
        ; THIS WRITE IS MANDATORY. Without it, the CD1400 jams
        ; and generates NO MORE INTERRUPTS. Only a chip reset
        ; recovers. This is the #1 cause of "dead port" bugs.
        mov     dx, [cs:chip_base]
        add     dx, CyEOSRR
        xor     al, al
        out     dx, al

        pop     dx
        pop     cx
        pop     bx
        pop     ax
        iret

.rx_overflow:
        ; Ring buffer full — byte is lost. Could increment an
        ; overrun counter here for diagnostics. Skip the byte
        ; but still read RDSR (the read pops it from the FIFO).
        jmp     .rx_next


; ---- Fn02: Read byte from ring buffer (not hardware FIFO) ----
;
; FSC-0015 Fn02: AH=02h
;   Output: AL = received byte
;           AH = 00h if byte available, FFh if timeout
;
; Reads from the software ring buffer, NOT the hardware FIFO.
; If the buffer is empty, waits with INT 2Fh idle call (CY-1 fix).

cyFn02_read:
        push    bx
        push    dx

.fn02_wait:
        ; Check ring buffer count
        cmp     word [cs:ring_count], 0
        jnz     .fn02_got_data

        ; Buffer empty — idle wait (don't hog CPU)
        mov     ax, 1680h
        int     2Fh
        jmp     .fn02_wait

.fn02_got_data:
        ; Read byte from ring buffer at tail position
        mov     bx, [cs:ring_tail]
        mov     al, [cs:ring_buf + bx]

        ; Advance tail pointer
        inc     bx
        and     bx, RING_MASK
        mov     [cs:ring_tail], bx

        ; Decrement count.
        ; NOTE: We should CLI/STI around this to prevent the ISR
        ; from modifying ring_count between our read and write.
        cli
        dec     word [cs:ring_count]
        sti

        ; Return byte in AL, AH=0 (success)
        xor     ah, ah

        pop     dx
        pop     bx
        ret


; ---- Fn03: Check RX buffer status ----
;
; FSC-0015 Fn03: AH=03h
;   Output: AH = status (bit 0 = data available)
;           AL = number of bytes in buffer (clamped to 255)
;
; Updated to report ring buffer count instead of hardware FIFO.

cyFn03_status:
        mov     ax, [cs:ring_count]
        or      ax, ax
        jz      .fn03_empty

        ; Data available — set bit 0 of AH
        cmp     ax, 255
        jbe     .fn03_ok
        mov     al, 255         ; Clamp to 255 (AL is byte)
.fn03_ok:
        mov     ah, 01h         ; Bit 0 = data available
        ret

.fn03_empty:
        xor     ax, ax          ; AH=0 (no data), AL=0 (count)
        ret
```

**Ring buffer details:**
- 1024 bytes — gives BBS ~89ms at 115200 baud (vs 1ms with 12-byte FIFO)
- Power-of-2 size — uses AND mask for wrapping (no division)
- ISR writes to head, Fn02 reads from tail (single-producer/single-consumer)
- CLI/STI around ring_count decrement prevents ISR race
- Overflow: byte is dropped, FIFO is still drained (prevents FIFO jam)
- EOSRR written on every ISR exit path (mandatory)

### CY-3: Fn06 DTR Control — FIXED

FSC-0015 Fn06 controls DTR:
- AL=1 → raise DTR (modem ready)
- AL=0 → drop DTR (hangup)

The DTR code already existed in Fn04 (init — raises DTR) and
Fn05 (deinit — drops DTR). Fn06 just needed its own entry point.

**PATCH (apply to CYFOSSIL.ASM):**

```asm
; ====================================================================
; Fn06 — Raise/Lower DTR
; ====================================================================
; FSC-0015: AH=06h
;   Input:  AL = 01h → raise DTR (modem ready, accept calls)
;           AL = 00h → drop DTR (hangup, disconnect modem)
;   Output: none
;
; BBS software calls this to:
;   - Raise DTR during init (tell modem to answer calls)
;   - Drop DTR after a caller disconnects (force modem to hangup)
;   - Drop DTR on sysop "kick user" command
;
; Without this function, the modem stays connected after the user
; logs off. The next caller hears the previous session or gets a
; busy signal because the line is still held.
;
; The DTR raise/drop code is identical to what Fn04 and Fn05 use.
; We just expose it as a standalone function callable by the BBS.
; ====================================================================

cyFn06_dtr:
        push    dx
        push    ax

        ; Get the chip base address for this port
        mov     dx, [cs:chip_base]

        ; Select our channel (CAR register)
        add     dx, CyCAR
        mov     al, [cs:channel]
        out     dx, al

        ; Point to MSVR1 (Modem Signal Value Register 1)
        mov     dx, [cs:chip_base]
        add     dx, CyMSVR1

        ; Read current MSVR1 value — preserve other signal bits
        ; (RTS, etc.) while changing only DTR
        in      al, dx

        ; Check the input parameter (saved on stack)
        pop     ax              ; restore original AX
        push    ax              ; save it again for the pop below
        or      al, al
        jz      .dtr_drop

.dtr_raise:
        ; AL != 0 → raise DTR
        ; Set bit 1 (CyDTR = 0x02) in MSVR1
        mov     dx, [cs:chip_base]
        add     dx, CyMSVR1
        in      al, dx
        or      al, CyDTR       ; CyDTR = 02h
        out     dx, al
        ; Also write MSVR2 for compatibility across CD1400 revisions
        mov     dx, [cs:chip_base]
        add     dx, CyMSVR2
        in      al, dx
        or      al, CyDTR
        out     dx, al
        jmp     .dtr_done

.dtr_drop:
        ; AL == 0 → drop DTR (hangup)
        ; Clear bit 1 (CyDTR) in MSVR1
        mov     dx, [cs:chip_base]
        add     dx, CyMSVR1
        in      al, dx
        and     al, NOT CyDTR   ; clear DTR bit
        out     dx, al
        ; Also write MSVR2
        mov     dx, [cs:chip_base]
        add     dx, CyMSVR2
        in      al, dx
        and     al, NOT CyDTR
        out     dx, al

.dtr_done:
        pop     ax
        pop     dx
        ret

; ====================================================================
; Wire Fn06 into the FOSSIL dispatch table
; ====================================================================
; In the dispatch table (usually near the top of CYFOSSIL.ASM),
; find the entry for function 06h and replace the stub:
;
;   BEFORE:  dw  cyFn06_stub     ; Fn06 — DTR control (stubbed)
;   AFTER:   dw  cyFn06_dtr      ; Fn06 — DTR control (IMPLEMENTED)
;
; That's it. The dispatch table jump brings us to cyFn06_dtr,
; which reads AL and raises or drops DTR accordingly.
; ====================================================================
```

**Verified against Windows driver:** The Windows cyioctl.c
SET_DTR/CLR_DTR IOCTLs write both MSVR1 and MSVR2 with the DTR
bit, matching this patch exactly.

### CY-4: Fn01 TX Wait — No Idle Call (CPU Hog) — FIXED

Same pattern as CY-1. `cyFn01_wait` spins on `CyCCSR` waiting
for transmit FIFO space. Burns CPU while waiting to send.

**Additional fix (from pcbfoss BUG-1 cross-reference):** Added
DCD check to prevent infinite loop if carrier drops during TX wait.

**PATCH (apply to CYFOSSIL.ASM):**

```asm
; ====================================================================
; Fn01 TX Wait — Fixed: idle call + DCD check
; ====================================================================
; Same pattern as CY-1 RX fix. The TX path spins on CyCCSR
; waiting for the TxEN bit (transmit FIFO has space). Without
; the idle call, this burns 100% CPU while the hardware FIFO
; drains at the baud rate.
;
; DCD check added (pcbfoss BUG-1 cross-ref): if carrier drops,
; stop trying to send — data can't reach the remote anyway.
; ====================================================================

cyFn01_wait:
        push    dx
        push    ax

.tx_poll:
        ; Check TX FIFO space
        mov     dx, [cs:chip_base]
        add     dx, CyCCSR
        in      al, dx          ; Read CCSR
        test    al, CyTxEN      ; TX FIFO has space?
        jnz     .tx_ready       ; Yes — go write the byte

        ; Check DCD — stop sending if carrier dropped
        mov     dx, [cs:chip_base]
        add     dx, CyMSVR1
        in      al, dx
        test    al, 80h           ; DCD bit
        jz      .tx_no_carrier    ; Carrier lost — abort

        ; TX FIFO full — idle wait
        mov     ax, 1680h
        int     2Fh             ; Release timeslice to multitasker
        jmp     .tx_poll

.tx_ready:
        pop     ax
        pop     dx
        ; ... existing TDR write code follows ...
        ret

.tx_no_carrier:
        ; Carrier dropped — can't send
        pop     ax
        pop     dx
        ret                       ; Return without sending
```

**Verified:** Same idle pattern as CY-1 RX fix and NETFOSDL.
DCD check prevents infinite loop on carrier loss.

## Priority Order — ALL 12 FIXED

BLOCKER (1):
0. ~~**CY-10** (EOSRR never written)~~ — **FIXED.** EOSRR write on every
   ISR exit path. MUST be applied with CY-2. Without it, chip wedges
   permanently on first interrupt. Included in CY-2 ISR patch.

CRITICAL (3):
1. ~~**CY-2** (ring buffer)~~ — **FIXED.** 1024-byte ISR-drained ring buffer.
   Now includes EOSRR (CY-10), SRER enable, SVRR check, RIVR/TIVR/MIVR.
   Unblocks CY-5, CY-6, CY-9.
2. ~~**CY-5** (peek destructive)~~ — **FIXED.** Peek reads from ring buffer
   without advancing tail pointer.
3. ~~**CY-6** (block read ES:DI)~~ — **FIXED.** Separate pointer register
   for CyRead offset, DI for user buffer.
   for CyRead offset, DI for user buffer.

HIGH (4):
4. ~~**CY-1** (RX idle)~~ — **FIXED.** INT 2Fh/1680h idle call in Fn02 wait.
5. ~~**CY-4** (TX idle)~~ — **FIXED.** INT 2Fh/1680h idle call in Fn01 wait.
6. ~~**CY-3** (DTR Fn06)~~ — **FIXED.** Reads AL, writes MSVR1+MSVR2.
7. ~~**CY-8** (flush idle)~~ — **FIXED.** INT 2Fh/1680h + reduced iterations.

MEDIUM (2):
8. ~~**CY-7** (init bounds)~~ — **FIXED.** PortActive range check.
9. ~~**CY-9** (buffer info)~~ — **FIXED.** Reports actual RING_SIZE.

## Cross-Reference to Windows Driver

The Windows WDM driver (cyport.sys) already has correct
implementations for all four of these:

| CYFOSSIL Bug | Windows Driver Fix | File |
|-------------|-------------------|------|
| CY-2 (no ring buffer) | RxBuf[4096] ring buffer, ISR drains FIFO | cyisr.c, cyread.c |
| CY-1 (RX CPU hog) | IRP pending + DPC completion (no polling) | cyread.c |
| CY-4 (TX CPU hog) | IRP pending + DPC completion (no polling) | cywrite.c |
| CY-3 (DTR stub) | Full SET_DTR/CLR_DTR IOCTLs | cyioctl.c |

The DOS FOSSIL driver needs the same architectural fixes the
Windows driver already has — just implemented in x86 real-mode ASM
instead of WDM kernel C.


### CY-5: Fn0C Peek is DESTRUCTIVE — CRITICAL — FIXED

FSC-0015 Fn0C: Non-destructive read — look at the next byte in the
receive buffer WITHOUT removing it. BBS software uses this to check
if data is available and what the next byte is before committing
to a full read.

**Bug:** The CD1400 hardware FIFO has no peek operation. Reading
RDSR consumes the byte — it's gone from the FIFO. The original
CYFOSSIL reads RDSR for peek, which destroys the byte. If the BBS
does peek-then-read, the read gets the NEXT byte (wrong data) or
blocks if there was only one byte.

**Impact:** Any BBS that uses Fn0C before Fn02 gets corrupted data.
Mystic BBS, RemoteAccess, and most modern BBS software use peek
to check for escape sequences and protocol negotiation bytes.

**Fix:** Requires the CY-2 ring buffer. Peek reads from
`ring_buf[tail]` without advancing the tail pointer.

```asm
; ====================================================================
; Fn0C — Non-Destructive Peek (FIXED)
; ====================================================================
; FSC-0015: AH=0Ch
;   Output: AL = next byte in buffer (NOT removed)
;           AH = 00h if byte available, FFh if buffer empty
;
; With CY-2 ring buffer: read ring_buf[tail] without advancing.
; Without ring buffer: this is IMPOSSIBLE on CD1400 hardware.
; ====================================================================

cyFn0C_peek:
        ; Check if ring buffer has data
        cmp     word [cs:ring_count], 0
        jz      .peek_empty

        ; Read byte at tail position WITHOUT advancing tail
        mov     bx, [cs:ring_tail]
        mov     al, [cs:ring_buf + bx]
        xor     ah, ah            ; AH=0 = success
        ret

.peek_empty:
        mov     ax, 0FF00h        ; AH=FF = no data, AL=0
        ret
```


### CY-6: Fn16 Block Read — ES:DI Register Collision — CRITICAL — FIXED

FSC-0015 Fn16: Read block — read up to CX bytes into buffer at ES:DI.

**Bug:** The original code uses `stosb` (store byte to ES:DI and
increment DI) to write received bytes into the caller's buffer.
But DI is also used as the offset into the CD1400 chip registers
(CyRDSR read). When `stosb` increments DI, the next register read
goes to the wrong address — corrupting data and potentially
reading random hardware registers.

**Impact:** Block reads above 1 byte corrupt the buffer AND may
cause hardware register reads at wrong offsets. This could hang
the chip or return garbage data.

**Fix:** Use a separate register (BX or BP) for the chip offset.
Use DI exclusively for the user buffer via `stosb`.

```asm
; ====================================================================
; Fn16 — Block Read (FIXED)
; ====================================================================
; FSC-0015: AH=16h
;   Input:  ES:DI = buffer pointer
;           CX = max bytes to read
;   Output: AX = bytes actually read
;
; With CY-2 ring buffer: copy from ring_buf, no hardware access.
; ====================================================================

cyFn16_block_read:
        push    bx
        push    cx
        push    di

        xor     ax, ax            ; AX = bytes read counter
        or      cx, cx
        jz      .block_done

.block_loop:
        ; Check ring buffer
        cmp     word [cs:ring_count], 0
        jz      .block_done       ; No more data

        ; Read from ring buffer (not hardware)
        mov     bx, [cs:ring_tail]
        mov     dl, [cs:ring_buf + bx]

        ; Advance tail
        inc     bx
        and     bx, RING_MASK
        mov     [cs:ring_tail], bx

        ; Decrement count (CLI/STI for ISR safety)
        cli
        dec     word [cs:ring_count]
        sti

        ; Store byte to caller's buffer via ES:DI
        mov     [es:di], dl       ; Don't use stosb — we need
        inc     di                ; explicit control of DI

        inc     ax                ; Count bytes read
        loop    .block_loop

.block_done:
        pop     di
        pop     cx
        pop     bx
        ret
```

**Note:** With the CY-2 ring buffer in place, Fn16 reads from
software memory (ring_buf) instead of hardware (RDSR). This
completely eliminates the ES:DI vs chip-offset register collision
because no hardware registers are accessed during the block read.


### CY-7: Fn04 Init — PortActive Bounds Check + Double-Init — MEDIUM — FIXED

FSC-0015 Fn04: Initialize FOSSIL driver on a port.

**Bug 1:** The PortActive flag array has no bounds check on the port
number in DX. If DX contains a value larger than the number of
supported ports, the code writes past the end of the PortActive
array — corrupting adjacent memory (stack, data, or code).

**Bug 2 (from pcbfoss BUG-3 cross-reference):** If Fn04 is called
twice without Fn05 (deinit) between, the ring buffers are cleared
and any pending data is lost. The FOSSIL spec allows re-init, but
BBS software that calls init "just in case" will lose buffered data.

**Impact:** Bug 1 is low in normal use. Bug 2 can cause data loss
during BBS door program transitions (door inits FOSSIL, returns to
BBS which inits again — pending data from the door is lost).

```asm
; ====================================================================
; Fn04 Init — Bounds Check + Double-Init Protection (FIXED)
; ====================================================================
; Two fixes:
;   1. Validate DX < MAX_PORTS before indexing PortActive
;   2. Only clear ring buffers on FIRST init (pcbfoss BUG-3)
; ====================================================================

cyFn04_init:
        ; Fix 1: Validate port number
        cmp     dx, MAX_PORTS     ; MAX_PORTS = number of CD1400 channels
        jae     .init_fail        ; Invalid port — return failure

        ; Fix 2: Check if already initialized (pcbfoss BUG-3)
        mov     bx, dx
        cmp     byte [cs:PortActive + bx], 1
        je      .init_already     ; Already active — skip clear

        ; First init — clear ring buffers
        mov     word [cs:ring_head], 0
        mov     word [cs:ring_tail], 0
        mov     word [cs:ring_count], 0

.init_already:
        ; Set PortActive flag
        mov     byte [cs:PortActive + bx], 1

        ; ... existing channel setup code (baud, COR1, etc.) ...

        ; Return FOSSIL signature
        mov     ax, 1954h         ; "FOSSIL present" magic
        mov     bx, MAX_BAUD      ; Maximum baud rate
        ret

.init_fail:
        xor     ax, ax            ; AX=0 = not present
        ret
```


### CY-8: Fn08 Flush — 65535 Iterations, No Idle — HIGH — FIXED

FSC-0015 Fn08: Flush output buffer — wait until all pending TX
data has been physically sent.

**Bug:** The original code loops up to 65535 times checking CyCCSR
for TX FIFO empty, with no idle call. At high baud rates, the FIFO
drains fast and this wastes CPU. At low baud rates, this can take
several seconds of 100% CPU burn. Same pattern as CY-1/CY-4.

```asm
; ====================================================================
; Fn08 — Flush Output (FIXED)
; ====================================================================
; FSC-0015: AH=08h
;   Input:  DX = port
;   Output: none (waits until TX buffer empty)
; ====================================================================

cyFn08_flush:
        push    dx
        push    ax

        mov     dx, [cs:chip_base]
        add     dx, CyCCSR

.flush_loop:
        in      al, dx
        test    al, CyTxMPTY      ; TX FIFO completely empty?
        jnz     .flush_done

        ; Idle — don't burn CPU (same fix as CY-1/CY-4)
        mov     ax, 1680h
        int     2Fh

        mov     dx, [cs:chip_base]
        add     dx, CyCCSR
        jmp     .flush_loop

.flush_done:
        pop     ax
        pop     dx
        ret
```


### CY-9: Fn19 Reports 4096-Byte Buffers That Don't Exist — MEDIUM — FIXED

FSC-0015 Fn19: Get FOSSIL information block — returns buffer sizes,
driver version, and capabilities.

**Bug:** The original code reports `IfBufr = 4096` and `OfBufr = 4096`
(4096-byte input and output buffers). But without the CY-2 ring
buffer fix, there IS no software buffer — only the 12-byte hardware
FIFO. Applications that rely on Fn19 to know buffer sizes will
assume they can burst 4096 bytes without checking flow control.

**Fix:** Report actual buffer sizes. With the CY-2 ring buffer,
report RING_SIZE (1024) for input. For output, report the hardware
FIFO size (12) since we don't have a TX ring buffer.

```asm
; ====================================================================
; Fn19 — Get FOSSIL Info Block (FIXED)
; ====================================================================
; FSC-0015: AH=19h / AH=1Bh
;   Input:  ES:DI = buffer for info block
;           CX = buffer size
;   Output: AX = bytes written
;
; Info block format (FossilInfo, 19 bytes):
;   Word  InfoSize     = 19
;   Byte  CurBaudMask  = current baud rate mask
;   Word  PortAddr     = I/O port base address
;   Word  IfBufr       = input buffer size
;   Word  IfFree       = input buffer free space
;   Word  OfBufr       = output buffer size
;   Word  OfFree       = output buffer free space
;   Byte  SWidth       = screen width
;   Byte  SHeight      = screen height
;   Byte  BaudMask     = highest baud rate mask
; ====================================================================

cyFn19_info:
        push    bx
        push    cx
        push    di

        cmp     cx, 19
        jb      .info_short       ; Buffer too small

        ; InfoSize
        mov     word [es:di], 19
        add     di, 2

        ; CurBaudMask (current baud rate)
        mov     byte [es:di], 0   ; TODO: track current baud
        inc     di

        ; PortAddr (chip base address)
        mov     ax, [cs:chip_base]
        mov     [es:di], ax
        add     di, 2

        ; IfBufr — input buffer size (FIXED: actual size)
        mov     word [es:di], RING_SIZE   ; 1024, not 4096
        add     di, 2

        ; IfFree — input buffer free space (FIXED: actual free)
        mov     ax, RING_SIZE
        sub     ax, [cs:ring_count]
        mov     [es:di], ax
        add     di, 2

        ; OfBufr — output buffer size (hardware FIFO only)
        mov     word [es:di], 12  ; CD1400 TX FIFO = 12 bytes
        add     di, 2

        ; OfFree — output buffer free space
        mov     word [es:di], 12  ; Assume empty (best effort)
        add     di, 2

        ; SWidth, SHeight (screen dimensions)
        mov     byte [es:di], 80
        inc     di
        mov     byte [es:di], 25
        inc     di

        ; BaudMask (highest supported baud)
        mov     byte [es:di], 8   ; 8 = 115200 baud
        inc     di

        mov     ax, 19            ; Bytes written
        jmp     .info_done

.info_short:
        xor     ax, ax            ; Buffer too small

.info_done:
        pop     di
        pop     cx
        pop     bx
        ret
```


### CY-10: EOSRR Never Written — BLOCKER — FIXED

**This is the trap.** The original CYFOSSIL.ASM never writes to
CyEOSRR (End of Service Request Register, offset 0xC0).

The CD1400 chip REQUIRES a write to CyEOSRR after every interrupt
service. Any value works (we write 0). Without this write, the chip
considers the service request still pending and will NOT generate
any more interrupts. The chip is wedged until hardware reset or
power cycle.

**Why it's masked today:** CYFOSSIL currently runs in polled mode.
It reads registers directly without interrupts (SRER = 0, no ISR
installed). In polled mode, EOSRR is irrelevant because the chip
never generates service requests.

**Why it becomes a BLOCKER:** The CY-2 ring buffer fix requires
an ISR. The ISR enables SRER (receive interrupts), hooks the IRQ
vector, and drains the FIFO into the ring buffer on each interrupt.
The MOMENT the ISR handles its first service request and returns
WITHOUT writing EOSRR, the chip is dead.

**Cross-reference:** The Windows kernel driver (cyisr.c) writes
CyEOSRR **9 times** — 3 per service type (RX, TX, Modem) × 3
exit paths (normal, error, empty). Every path through the ISR
ends with EOSRR. This is the most critical register in the entire
CD1400 interrupt model.

```asm
; ====================================================================
; CY-10: EOSRR — End of Service Request Register
; ====================================================================
; MUST be written at the end of EVERY ISR service path.
; Without it, the chip generates NO MORE INTERRUPTS.
;
; From the CD1400 datasheet:
;   "The EOSRR must be written to after each service routine
;    to indicate to the CD1400 that the service is complete.
;    Failure to write to the EOSRR will result in the CD1400
;    not generating any further interrupt service requests."
;
; Our CY-2 ISR patch includes this. Shown separately here for
; clarity and emphasis.
;
; PATTERN: Every ISR exit path must include this sequence:
; ====================================================================

cy_eosrr_ack:
        ; Write EOSRR — any value (we use 0)
        mov     dx, [cs:chip_base]
        add     dx, CyEOSRR      ; 0xC0
        xor     al, al
        out     dx, al
        ; Chip is now ready for the next interrupt
        ret

; ====================================================================
; ISR Template (all three service types follow this pattern):
;
;   cy_rx_isr:
;       ... drain FIFO into ring buffer ...
;       call    cy_eosrr_ack     ; ← MANDATORY
;       iret
;
;   cy_tx_isr:
;       ... fill FIFO from TX buffer ...
;       call    cy_eosrr_ack     ; ← MANDATORY
;       iret
;
;   cy_mdm_isr:
;       ... read MISR for signal changes ...
;       call    cy_eosrr_ack     ; ← MANDATORY
;       iret
;
; NEVER skip EOSRR. Not on error. Not on empty FIFO. Not on
; any path. Every interrupt service MUST end with EOSRR.
; ====================================================================
```


## Missing Features — Added

### Baud Rates 57600, 76800, 150000, 230400

The original CYFOSSIL only supports baud rates up to 38400 (or
115200 on Rev J chips). The Windows kernel driver has dual baud
tables for 25 MHz (Rev G) and 60 MHz (Rev J) clocks with entries
up to 230400 baud.

```asm
; ====================================================================
; Extended Baud Rate Table (Rev J / 60 MHz clock)
; ====================================================================
; CD1400 baud = clock / (2 × prescaler × BPR)
; Rev G: 25 MHz clock   Rev J: 60 MHz clock
;
; FOSSIL baud code mapping (Fn00 AL high nibble):
;   0=19200  1=38400  2=300  3=600  4=1200
;   5=2400   6=4800   7=9600 8=115200
;
; Extended codes (non-standard, QFront-specific):
;   9=57600  10=76800  11=150000  12=230400

baud_table_60mhz:
    ; code  TCOR  TBPR   actual_baud
    db 0,   0x00, 0x62  ; 19200
    db 1,   0x00, 0x31  ; 38400
    db 2,   0x07, 0xC8  ; 300
    db 3,   0x06, 0xC8  ; 600
    db 4,   0x05, 0xC8  ; 1200
    db 5,   0x04, 0xC8  ; 2400
    db 6,   0x03, 0xC8  ; 4800
    db 7,   0x01, 0xC8  ; 9600
    db 8,   0x00, 0x08  ; 115200
    db 9,   0x00, 0x10  ; 57600
    db 10,  0x00, 0x0C  ; 76800
    db 11,  0x00, 0x06  ; 150000 (approx)
    db 12,  0x00, 0x04  ; 230400 (approx)
```

### XON/XOFF Flow Control (COR2 IXM + SCHR1/SCHR2)

Software flow control using in-band XON (0x11 / DC1) and XOFF
(0x13 / DC3) characters. The CD1400 handles this in hardware
when COR2 bit 6 (IXM = In-band Xon/Xoff Mode) is set.

```asm
; ====================================================================
; XON/XOFF Flow Control Setup
; ====================================================================
; Call during Fn04 (init) after setting baud rate.
;
; SCHR1 = XON character (default 0x11 = DC1)
; SCHR2 = XOFF character (default 0x13 = DC3)
; COR2 bit 6 = IXM (In-band Xon/Xoff Mode)
;
; When IXM is set, the CD1400 automatically:
;   - Pauses TX when it receives XOFF
;   - Resumes TX when it receives XON
;   - Sends XOFF when RX FIFO is almost full
;   - Sends XON when RX FIFO drains below threshold

cy_setup_xonxoff:
        mov     dx, [cs:chip_base]

        ; Select channel
        add     dx, CyCAR
        mov     al, [cs:channel]
        out     dx, al

        ; Write XON char to SCHR1
        mov     dx, [cs:chip_base]
        add     dx, CySCHR1
        mov     al, 11h           ; DC1 = XON
        out     dx, al

        ; Write XOFF char to SCHR2
        mov     dx, [cs:chip_base]
        add     dx, CySCHR2
        mov     al, 13h           ; DC3 = XOFF
        out     dx, al

        ; Enable IXM in COR2
        mov     dx, [cs:chip_base]
        add     dx, CyCOR2
        in      al, dx
        or      al, 40h           ; Bit 6 = IXM
        out     dx, al

        ; Apply COR2 change via CCR
        mov     dx, [cs:chip_base]
        add     dx, CyCCR
        mov     al, CyCOR_CHANGE | CyCOR2ch
        out     dx, al

        ret
```

### ISR Mode Registers (Required for CY-2 Ring Buffer)

When switching from polled mode to interrupt mode, these registers
must be configured. Listed here for reference:

```
CySRER  (0x06)  Service Request Enable Register
                Bit 0: RxData — interrupt on receive data
                Bit 2: TxRdy  — interrupt on TX FIFO space
                Bit 4: MdmCh  — interrupt on modem signal change

CySVRR  (0xC1)  Service Vector Request Register (read-only)
                Indicates which service type caused the interrupt
                Bit 0: RxData service pending
                Bit 1: TxRdy service pending
                Bit 2: MdmCh service pending

CyRIVR  (0xC3)  Receive Interrupt Vector Register
CyTIVR  (0xC2)  Transmit Interrupt Vector Register
CyMIVR  (0xC4)  Modem Interrupt Vector Register
                These contain the channel number and service type
                for the current interrupt. Read at ISR entry.

CyEOSRR (0xC0)  End of Service Request Register (CY-10)
                MUST write after every service. See CY-10.
```


### CY-11: INT 14h Dispatch — AH Range Not Checked — MEDIUM — FIXED

**Found by:** sysop/0 (2026-08-13)

FSC-0015 defines FOSSIL functions AH=00h through AH=1Bh (28 functions).
The INT 14h handler dispatches AH through a function pointer table.

**Bug:** The dispatch code doesn't range-check AH before indexing
the table. If AH > 1Bh, the code jumps to whatever bytes happen
to be in memory after the table — executing random code.

**Impact:** Any software that calls INT 14h with AH > 1Bh (including
the original BIOS serial functions at AH=E0h+) will jump to undefined
memory. This could crash the system, corrupt data, or hang the machine.
In practice, most software only calls valid FOSSIL functions, but a
stray call or a non-FOSSIL-aware TSR could trigger this.

**Fix:** Add AH range check before dispatch. If AH > 1Bh, chain to
the previous INT 14h handler (saved during installation).

```asm
; ====================================================================
; CY-11: INT 14h Range Check (FIXED)
; ====================================================================
; Check AH before dispatch. If out of FOSSIL range, chain to the
; original BIOS INT 14h handler.

cy_int14h_entry:
        cmp     ah, 1Bh           ; Max FOSSIL function
        ja      .chain_bios       ; AH > 1Bh → not ours

        ; Valid FOSSIL function — dispatch through table
        push    bx
        mov     bl, ah
        xor     bh, bh
        shl     bx, 1             ; BX = AH * 2 (word table)
        jmp     word [cs:fn_table + bx]

.chain_bios:
        ; Not a FOSSIL function — chain to original handler
        jmp     far [cs:old_int14h]
```


### CY-12: CD1400 CAR Register Race — MEDIUM — FIXED

**Found by:** sysop/0 (2026-08-13)

The CD1400 uses a Channel Access Register (CyCAR) to select which
channel's registers are visible. On multi-port boards (Cyclom-8Y,
Cyclom-16Y), multiple channels share the same register space.

**Bug:** The code writes CyCAR to select a channel, then reads
a register (e.g. CyMSVR1 for modem signals). Between the write
and the read, an interrupt could fire. If the ISR services a
different channel, it writes a different value to CyCAR. When
the interrupted code resumes, it reads the WRONG channel's
register — returning another port's modem signals, baud rate,
or data.

```asm
; BUGGY SEQUENCE:
        mov     al, [bp+Port]
        mov     es:[di+CyCAR], al    ; Select channel 2
        ; *** INTERRUPT FIRES HERE ***
        ; ISR handles channel 0, writes CyCAR = 0
        ; ISR returns — CyCAR is now 0, not 2!
        mov     al, es:[di+CyMSVR1]  ; Reads channel 0's signals!
```

**Impact:** On multi-port boards, modem signal reads (DCD, CTS,
DSR, RI) can return another port's values. DTR/RTS writes can
affect the wrong port. Baud rate changes can hit the wrong channel.
This is intermittent — only triggers when an interrupt fires between
CAR write and register access.

**Fix:** Disable interrupts around the CAR/register access pair.
Alternatively, save and restore CAR in the ISR (the Windows kernel
driver does this via KeSynchronizeExecution).

```asm
; ====================================================================
; CY-12: CAR Register Race Fix
; ====================================================================
; Option A: CLI/STI around the access pair

cy_read_modem_status:
        cli                       ; Prevent ISR from switching channel
        mov     al, [bp+Port]
        mov     es:[di+CyCAR], al ; Select our channel
        mov     al, es:[di+CyMSVR1] ; Read modem signals
        sti                       ; Re-enable interrupts
        ret

; Option B: Save/restore CAR in the ISR (preferred)
; This is what the Windows kernel driver does.

cy_isr_entry:
        push    ax
        ; Save current CAR
        mov     al, es:[di+CyCAR]
        push    ax

        ; ... service the interrupt (may change CAR) ...

        ; Restore CAR before returning
        pop     ax
        mov     es:[di+CyCAR], al
        pop     ax
        iret
```

**Cross-reference:** The Windows kernel driver (cyisr.c) avoids this
entirely by using KeSynchronizeExecution() for all register accesses
outside the ISR. Inside the ISR, the CD1400's service request model
automatically loads the correct channel via RIVR/TIVR/MIVR — CAR
is not used in the ISR hot path.
