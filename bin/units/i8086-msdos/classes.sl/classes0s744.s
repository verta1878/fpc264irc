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
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTWSTRING$WIDESTRING
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTWSTRING$WIDESTRING:
		push	bp
		mov	bp,sp
		sub	sp,14
		push	word [bp+4]
		call	fpc_unicodestr_incr_ref
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
		jne	..@j16410
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j16418
		mov	bx,word [bx-2]
..@j16418:
		shl	bx,1
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j16419
		mov	ax,word FPC_EMPTYCHAR
..@j16419:
		add	ax,bx
		push	ax
		mov	ax,word CLASSES_$$_WIDECHARTOORD$POINTER$$LONGWORD
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTCHARS$POINTER$POINTER$CHARTOORDFUNCTY$BOOLEAN
..@j16410:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16411
		call	FPC_RERAISE
..@j16411:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTCHARS$POINTER$POINTER$CHARTOORDFUNCTY$BOOLEAN
EXTERN	CLASSES_$$_WIDECHARTOORD$POINTER$$LONGWORD
EXTERN	FPC_EMPTYCHAR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_unicodestr_incr_ref
