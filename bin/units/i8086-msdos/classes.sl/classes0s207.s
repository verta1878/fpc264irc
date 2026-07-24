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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_SORT$TCOLLECTIONSORTCOMPARE
CLASSES$_$TCOLLECTION_$__$$_SORT$TCOLLECTIONSORTCOMPARE:
		push	bp
		mov	bp,sp
		sub	sp,14
		push	word [bp+6]
		mov	bx,word [bp+6]
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
		jne	..@j4589
		mov	bx,word [bp+6]
		push	word [bx+8]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_SORT$TLISTSORTCOMPARE
..@j4589:
		call	FPC_POPADDRSTACK
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+76]
		call	ax
		pop	ax
		test	ax,ax
		je	..@j4590
		call	FPC_RERAISE
..@j4590:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TFPLIST_$__$$_SORT$TLISTSORTCOMPARE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
