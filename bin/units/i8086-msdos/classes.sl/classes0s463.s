BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSIMPLESTATUSTHREAD_$__$$_SETSTATUS$ANSISTRING
CLASSES$_$TSIMPLESTATUSTHREAD_$__$$_SETSTATUS$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		mov	bx,word [bp+6]
		push	word [bx+28]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j10466
		cmp	cx,0
		jne	..@j10466
		jmp	..@j10465
..@j10465:
		jmp	..@j10463
..@j10466:
		mov	bx,word [bp+6]
		lea	ax,[bx+28]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		cmp	word [bx+30],0
		jne	..@j10475
		jmp	..@j10476
..@j10475:
		push	word [bp+6]
		mov	dx,word [bp+6]
		mov	ax,word CLASSES$_$TSIMPLESTATUSTHREAD_$__$$_DOSTATUS
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		lea	ax,[bp-4]
		push	ax
		call	CLASSES$_$TTHREAD_$__$$_SYNCHRONIZE$TTHREADMETHOD
..@j10476:
..@j10463:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TTHREAD_$__$$_SYNCHRONIZE$TTHREADMETHOD
EXTERN	CLASSES$_$TSIMPLESTATUSTHREAD_$__$$_DOSTATUS
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_compare_equal
