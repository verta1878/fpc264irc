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
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTUTF8STR$ANSISTRING
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTUTF8STR$ANSISTRING:
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
		jne	..@j16367
		mov	bx,word [bp+6]
		cmp	word [bx+4],1
		je	..@j16369
		jmp	..@j16370
..@j16369:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j16377
		mov	ax,word FPC_EMPTYCHAR
..@j16377:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j16378
		mov	bx,word [bx-2]
..@j16378:
		add	bx,ax
		push	bx
		mov	ax,word CLASSES_$$_CHARTOORD$POINTER$$LONGWORD
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTCHARS$POINTER$POINTER$CHARTOORDFUNCTY$BOOLEAN
		jmp	..@j16383
..@j16370:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j16390
		mov	ax,word FPC_EMPTYCHAR
..@j16390:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j16391
		mov	bx,word [bx-2]
..@j16391:
		add	bx,ax
		push	bx
		mov	ax,word CLASSES_$$_UTF8TOORD$POINTER$$LONGWORD
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTCHARS$POINTER$POINTER$CHARTOORDFUNCTY$BOOLEAN
..@j16383:
..@j16367:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16368
		call	FPC_RERAISE
..@j16368:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES_$$_UTF8TOORD$POINTER$$LONGWORD
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTCHARS$POINTER$POINTER$CHARTOORDFUNCTY$BOOLEAN
EXTERN	CLASSES_$$_CHARTOORD$POINTER$$LONGWORD
EXTERN	FPC_EMPTYCHAR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
