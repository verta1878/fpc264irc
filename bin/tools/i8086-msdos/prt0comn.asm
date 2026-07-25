; common startup code for all the memory models

%ifdef __TINY__
        %define __NEAR_CODE__
        %define __NEAR_DATA__
%elifdef __SMALL__
        %define __NEAR_CODE__
        %define __NEAR_DATA__
%elifdef __MEDIUM__
        %define __FAR_CODE__
        %define __NEAR_DATA__
%elifdef __COMPACT__
        %define __NEAR_CODE__
        %define __FAR_DATA__
%elifdef __LARGE__
        %define __FAR_CODE__
        %define __FAR_DATA__
%elifdef __HUGE__
        %define __FAR_CODE__
        %define __FAR_DATA__
%else
        %fatal "Memory model not defined."
%endif

%ifdef __FAR_CODE__
        extra_param_offset equ 2
%else
        extra_param_offset equ 0
%endif

%ifdef __FAR_DATA__
        extra_data_offset equ 2
%else
        extra_data_offset equ 0
%endif

        cpu 8086

        segment text use16 class=code

        extern PASCALMAIN
        extern __fpc_PrefixSeg
        extern dos_version
        extern __Test8086

        extern _edata  ; defined by WLINK, indicates start of BSS
        extern _end    ; defined by WLINK, indicates end of BSS

        extern __stklen
        extern __stktop
        extern __stkbottom

        extern __nearheap_start
        extern __nearheap_end

        extern ___heap

%ifdef __NEAR_DATA__
        extern __fpc_stackplusmaxheap_in_para
%endif

%ifndef __TINY__
    %ifdef __FAR_DATA__
        extern ___stack
    %endif
    %ifdef __NEAR_DATA__
        extern ___stacktop
    %endif
%endif

        extern __SaveInt00

        extern FPC_HANDLEERROR

%ifdef __TINY__
        resb 0100h
%endif
..start:
%ifdef __TINY__
        mov bx, cs
%else
        mov bx, dgroup
    %ifdef __NEAR_DATA__
        ; init the stack
        mov ss, bx
        mov sp, ___stacktop wrt dgroup
    %endif
%endif

        ; zero fill the BSS section
        mov es, bx
        mov di, _edata wrt dgroup
        mov cx, _end wrt dgroup
        sub cx, di
        xor al, al
        cld
        rep stosb

        ; save the Program Segment Prefix
        push ds

        ; init DS
        mov ds, bx

        ; pop the PSP from stack and store it in the pascal variable PrefixSeg
        pop ax
        mov word [__fpc_PrefixSeg], ax

        ; get DOS version and save it in the pascal variable dos_version
        mov ax, 3000h
        int 21h
        xchg al, ah
        mov word [dos_version], ax

        xor bx, bx
cpu_detect_done:
        mov [__Test8086], bl

%ifdef __NEAR_DATA__
; ****************************************************************************
; **                      near data memory layout setup                     **
; ****************************************************************************

        ; allocate max heap
        ; first we determine in paragraphs ax:=min(64kb, data+bss+stack+maxheap)
        mov ax, _end wrt dgroup
        add ax, 15
        mov cl, 4
        shr ax, cl
        add ax, word [__fpc_stackplusmaxheap_in_para]
        cmp ax, 1000h  ; 1000h = 64k in paragraphs
        jbe data_with_maxheap_less_than_64k
        mov ax, 1000h
data_with_maxheap_less_than_64k:

        ; try to resize our main DOS memory block until the end of the data segment (or even smaller, if maxheap is small)
        mov cx, word [__fpc_PrefixSeg]
%ifdef __TINY__
        mov dx, cs
%else
        mov dx, dgroup
%endif
        sub dx, cx  ; dx = (ds - psp) in paragraphs
        push dx  ; save (ds - psp)
        add dx, 1000h  ; 64kb in paragraphs

         ; get our MCB size in paragraphs
        dec cx
        mov es, cx
        mov bx, word [es:3]

        ; is it smaller than the maximum data segment size?
        cmp bx, dx
        jbe skip_mem_realloc

        mov bx, dx
        inc cx
        mov es, cx
        mov ah, 4Ah
        int 21h
        jc mem_realloc_err

skip_mem_realloc:

        ; bx = the new size in paragraphs
        pop cx  ; cx = (ds - psp)
        sub bx, cx
        mov cl, 4
        shl bx, cl
        sub bx, 2
        mov sp, bx

        mov word [__stktop], sp
        add bx, 2
        sub bx, word [__stklen]
        and bl, 0FEh
        mov word [__stkbottom], bx

        mov ax, _end wrt dgroup
        cmp bx, ax
        jb not_enough_mem

        ; heap is between [ds:_end wrt dgroup] and [ds:__stkbottom - 1]
        add ax, 3
        and al, 0FCh
        mov word [__nearheap_start], ax
        and bl, 0FCh
        mov word [__nearheap_end], bx

; ****************************************************************************
; **                      near data setup done                              **
; ****************************************************************************
%endif


%ifdef __FAR_DATA__
        mov word [__stktop], sp
        mov word [__stkbottom], 0
        mov ax, ss
        mov word [__stkbottom + 2], ax
        mov word [__stktop    + 2], ax

        mov dx, sp
        add dx, 15
        mov cl, 4
        shr dx, cl
        add ax, dx
        mov word [__nearheap_start], 0
        mov word [__nearheap_start + 2], ax

       ; get our MCB size in paragraphs
        mov cx, word [__fpc_PrefixSeg]
        dec cx
        mov es, cx
        mov bx, word [es:3]
        add bx, cx
        inc bx
        ; __nearheap_end := end_of_dos_memory_block
        mov word [__nearheap_end], 0
        mov word [__nearheap_end + 2], bx
%endif

%ifdef __FAR_CODE__
        jmp far PASCALMAIN
%else
        jmp PASCALMAIN
%endif

%ifdef __NEAR_DATA__
not_enough_mem:
        mov dx, not_enough_mem_msg
        jmp error_msg

mem_realloc_err:
        ; at this point there's still (ds-psp) pushed on the stack, but we won't
        ; bother popping it, because we exit to DOS with an error message here
        mov dx, mem_realloc_err_msg
error_msg:
        mov ah, 9
        int 21h
        mov ax, 4CFFh
        int 21h
%endif

FPC_INT00_HANDLER:
        sub sp, 4  ; reserve space on the stack for the retf

        push cx
        push ds
        push bp

        ; init ds
%ifdef __TINY__
        mov bp, cs
%else
        mov bp, dgroup
%endif
        mov ds, bp

%ifdef __NEAR_DATA__
        ; in memory models, where SS=DS, also
        ; check whether we're running on the same stack
        mov cx, ss
        cmp bp, cx
        jne .call_previous_handler
%endif

%ifndef __FAR_CODE__
        ; check whether we're coming from the same code segment
        mov bp, sp
        mov cx, [bp + 3*2 + 6]  ; get caller segment
        mov bp, cs
        cmp bp, cx
        jne .call_previous_handler
%endif

        ; runerror 200
        mov bp, sp
        mov cx, [bp + 3*2 + 4]  ; get caller offset
%ifdef __FAR_CODE__
        mov dx, [bp + 3*2 + 6]  ; get caller segment
%endif
        pop bp
        add sp, 2*2 + 4 + 6
        xor ax, ax
        push ax
        mov ax, 200
        push ax
%ifdef __FAR_CODE__
        push dx
%endif
        push cx
        cld
%ifdef __FAR_CODE__
        jmp far FPC_HANDLEERROR
%else
        jmp FPC_HANDLEERROR
%endif

.call_previous_handler:
        mov bp, sp
        mov cx, [__SaveInt00]
        mov [bp + 3*2], cx
        mov cx, [__SaveInt00+2]
        mov [bp + 3*2 + 2], cx
        pop bp
        pop ds
        pop cx
        retf  ; jumps to the previous handler with all registers and stack intact



        global FPC_INSTALL_INTERRUPT_HANDLERS
FPC_INSTALL_INTERRUPT_HANDLERS:
        ret

        global FPC_RESTORE_INTERRUPT_HANDLERS
FPC_RESTORE_INTERRUPT_HANDLERS:
        ret


        mov ax, 2500h
        lds dx, [__SaveInt00]
        int 21h

        pop ds
%ifdef __FAR_CODE__
        retf
%else
        ret
%endif


        global FPC_MSDOS_CARRY
FPC_MSDOS_CARRY:
        stc
        global FPC_MSDOS
FPC_MSDOS:
        mov dx, ax      ; DX = regs pointer
        mov al, 21h     ; AL = INT 21h
        global FPC_INTR
FPC_INTR:
        ; Register convention: AL = interrupt number, DX = pointer to Registers record
        push bp
        mov bp, sp
        push dx                 ; save regs pointer at [bp-2]
        mov si, dx              ; SI = regs pointer
        ; Save int number
        mov byte [bp-3], al     ; save int_num at [bp-3] (use sub sp,4 area... actually just use stack)
        sub sp, 2               ; [bp-4] area
        mov byte [bp-4], al     ; int_num saved
        ; Load primary registers from Registers record
        mov ax, word [si]       ; AX
        mov bx, word [si + 2]   ; BX
        mov cx, word [si + 4]   ; CX
        mov dx, word [si + 6]   ; DX
        ; Dispatch based on interrupt number
        push si                 ; save regs pointer again (under loaded regs)
        mov si, word [bp - 2]   ; restore original regs ptr... no, use saved int_num
        ; Actually simplify: use the byte we saved
        push ax                 ; save AX (loaded from regs)
        mov al, byte [bp-4]     ; get int_num back
        cmp al, 21h
        je .do_int21
        cmp al, 10h
        je .do_int10
        cmp al, 16h
        je .do_int16
        cmp al, 14h
        je .do_int14
        cmp al, 33h
        je .do_int33
        cmp al, 2Fh
        je .do_int2f
        jmp .do_int21           ; fallback
.do_int10:
        pop ax
        pop si
        int 10h
        jmp short .save_results
.do_int14:
        pop ax
        pop si
        int 14h
        jmp short .save_results
.do_int16:
        pop ax
        pop si
        int 16h
        jmp short .save_results
.do_int21:
        pop ax
        pop si
        int 21h
        jmp short .save_results
.do_int2f:
        pop ax
        pop si
        int 2Fh
        jmp short .save_results
.do_int33:
        pop ax
        pop si
        int 33h
        ;jmp short .save_results  ; fall through
.save_results:
        ; Save results back — get regs pointer from [bp-2]
        push si                 ; save SI result
        mov si, [bp - 2]        ; regs pointer from stack frame
        mov word [si], ax       ; AX result
        mov word [si + 2], bx   ; BX result
        mov word [si + 4], cx   ; CX result
        mov word [si + 6], dx   ; DX result
        pop word [si + 10]      ; SI result
        mov word [si + 12], di  ; DI result
        pushf
        pop word [si + 18]      ; FLAGS
        ; Restore and return
        mov sp, bp
        pop bp
        ret


                  ; clean 4 bytes (regs_ptr + int_num)



        ; Post-INT: save all registers back
__intr_post:
        pushf
        push ds
        push si
        push bp
        mov bp, sp
%ifdef __FAR_DATA__
        mov si, [bp + 16 + extra_param_offset]
%else
        mov si, word [bp + 8]
%endif
        mov ds, si
        mov si, word [bp + 14 + extra_param_offset]
        mov word [si], ax
        mov word [si + 2], bx
        mov word [si + 4], cx
        mov word [si + 6], dx
        mov word [si + 12], di
        mov ax, es
        mov word [si + 16], ax
        pop ax
        mov word [si + 8], ax   ; bp
        pop ax
        mov word [si + 10], ax  ; si
        pop ax
        mov word [si + 14], ax  ; ds
        pop ax
        mov word [si + 18], ax  ; flags

        pop ds
        pop bp
%ifdef __FAR_CODE__
        retf 4 + extra_data_offset
%else
        ret 4 + extra_data_offset
%endif

; Additional interrupt entry points for non-21h interrupts
        global FPC_INTR_10H
FPC_INTR_10H:
        ; Same as FPC_INTR but with INT 10h
        push bp
        mov bp, sp
        mov si, [bp + 4 + extra_param_offset]
        push ds
        mov ax, word [si + 16]
        mov es, ax
        mov ax, word [si + 14]
        push ax
        mov ax, word [si]
        mov bx, word [si + 2]
        mov cx, word [si + 4]
        mov dx, word [si + 6]
        mov bp, word [si + 8]
        mov di, word [si + 12]
        mov si, word [si + 10]
        pop ds
        int 10h
        jmp __intr_post

        global FPC_INTR_16H
FPC_INTR_16H:
        push bp
        mov bp, sp
        mov si, [bp + 4 + extra_param_offset]
        push ds
        mov ax, word [si + 16]
        mov es, ax
        mov ax, word [si + 14]
        push ax
        mov ax, word [si]
        mov bx, word [si + 2]
        mov cx, word [si + 4]
        mov dx, word [si + 6]
        mov bp, word [si + 8]
        mov di, word [si + 12]
        mov si, word [si + 10]
        pop ds
        int 16h
        jmp __intr_post

        global FPC_INTR_33H
FPC_INTR_33H:
        push bp
        mov bp, sp
        mov si, [bp + 4 + extra_param_offset]
        push ds
        mov ax, word [si + 16]
        mov es, ax
        mov ax, word [si + 14]
        push ax
        mov ax, word [si]
        mov bx, word [si + 2]
        mov cx, word [si + 4]
        mov dx, word [si + 6]
        mov bp, word [si + 8]
        mov di, word [si + 12]
        mov si, word [si + 10]
        pop ds
        int 33h
        jmp __intr_post


%ifndef __TINY__
        global FPC_CHECK_NULLAREA
FPC_CHECK_NULLAREA:
        xor ax, ax
        nop
    %ifdef __FAR_CODE__
        retf
    %else
        ret
    %endif
%endif

        segment data class=data
%ifdef __NEAR_DATA__
mem_realloc_err_msg:
        db 'Memory allocation error', 13, 10, '$'
not_enough_mem_msg:
        db 'Not enough memory', 13, 10, '$'
%endif
        ; add reference to the beginning of the minimal heap, so the object
        ; module, containing the heap segment doesn't get smartlinked away
        dd ___heap

        segment bss class=bss

%ifndef __TINY__
        segment _NULL align=16 class=BEGDATA
        global __nullarea
__nullarea:
        dd 01010101h, 01010101h, 01010101h, 01010101h
        dd 01010101h, 01010101h, 01010101h, 01010101h

        segment _AFTERNULL align=2 class=BEGDATA
        dw 0

    %ifdef __NEAR_DATA__
        segment stack stack class=stack
    %else
        segment data
        ; add reference to the beginning of stack, so the object module,
        ; containing the stack segment doesn't get smartlinked away
        dd ___stack
    %endif
%endif

%ifdef __TINY__
        group dgroup text data bss
%else
    %ifdef __NEAR_DATA__
        group dgroup _NULL _AFTERNULL data bss stack
    %else
        group dgroup _NULL _AFTERNULL data bss
    %endif
%endif
