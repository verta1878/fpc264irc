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
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTRING$ANSISTRING
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,14
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
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
		jne	..@j16424
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j16432
		mov	ax,word FPC_EMPTYCHAR
..@j16432:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j16433
		mov	bx,word [bx-2]
..@j16433:
		add	bx,ax
		push	bx
		mov	ax,word CLASSES_$$_CHARTOORD$POINTER$$LONGWORD
		push	ax
		mov	bx,word [bp+6]
		cmp	word [bx+4],1
		mov	al,0
		jne	..@j16438
		inc	ax
..@j16438:
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTCHARS$POINTER$POINTER$CHARTOORDFUNCTY$BOOLEAN
..@j16424:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16425
		call	FPC_RERAISE
..@j16425:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTCHARS$POINTER$POINTER$CHARTOORDFUNCTY$BOOLEAN
EXTERN	CLASSES_$$_CHARTOORD$POINTER$$LONGWORD
EXTERN	FPC_EMPTYCHAR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
