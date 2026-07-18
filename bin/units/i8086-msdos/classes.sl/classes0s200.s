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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_CLEAR
CLASSES$_$TCOLLECTION_$__$$_CLEAR:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		cmp	word [bx+4],0
		je	..@j4473
		jmp	..@j4474
..@j4473:
		jmp	..@j4471
..@j4474:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+74]
		call	ax
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
		jne	..@j4477
		push	word [bp+4]
		call	CLASSES$_$TCOLLECTION_$__$$_DOCLEAR
..@j4477:
		call	FPC_POPADDRSTACK
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+76]
		call	ax
		pop	ax
		test	ax,ax
		je	..@j4478
		call	FPC_RERAISE
..@j4478:
..@j4471:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TCOLLECTION_$__$$_DOCLEAR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
