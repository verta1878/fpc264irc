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
	GLOBAL CLASSES$_$TTHREADLIST_$__$$_CLEAR
CLASSES$_$TTHREADLIST_$__$$_CLEAR:
		push	bp
		mov	bp,sp
		sub	sp,14
		push	word [bp+4]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j6722
		mov	bx,word [bp+4]
		push	word [bx+2]
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
..@j6722:
		call	FPC_POPADDRSTACK
		push	word [bp+4]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j6723
		call	FPC_RERAISE
..@j6723:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
