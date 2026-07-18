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
	GLOBAL CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		cmp	byte [bx+15],1
		je	..@j3854
		jmp	..@j3853
..@j3854:
		mov	bx,word [bp+6]
		push	word [bx+17]
		push	word [bp+4]
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		je	..@j3852
		jmp	..@j3853
..@j3852:
		mov	byte [bp-1],1
		jmp	..@j3859
..@j3853:
		mov	byte [bp-1],0
..@j3859:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
