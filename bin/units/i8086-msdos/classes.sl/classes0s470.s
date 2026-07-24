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
	GLOBAL CLASSES$_$TSIMPLESTATUSPROCTHREAD_$__$$_SETSTATUS$ANSISTRING
CLASSES$_$TSIMPLESTATUSPROCTHREAD_$__$$_SETSTATUS$ANSISTRING:
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
		jne	..@j10616
		cmp	cx,0
		jne	..@j10616
		jmp	..@j10615
..@j10615:
		jmp	..@j10613
..@j10616:
		mov	bx,word [bp+6]
		lea	ax,[bx+28]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		cmp	word [bx+30],0
		jne	..@j10625
		jmp	..@j10626
..@j10625:
		push	word [bp+6]
		mov	dx,word [bp+6]
		mov	ax,word CLASSES$_$TSIMPLESTATUSPROCTHREAD_$__$$_DOSTATUS
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		lea	ax,[bp-4]
		push	ax
		call	CLASSES$_$TTHREAD_$__$$_SYNCHRONIZE$TTHREADMETHOD
..@j10626:
..@j10613:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TTHREAD_$__$$_SYNCHRONIZE$TTHREADMETHOD
EXTERN	CLASSES$_$TSIMPLESTATUSPROCTHREAD_$__$$_DOSTATUS
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_compare_equal
