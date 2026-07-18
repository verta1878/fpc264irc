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
	GLOBAL CLASSES$_$TPARSER_$__$$_HEXTOBINARY$TSTREAM
CLASSES$_$TPARSER_$__$$_HEXTOBINARY$TSTREAM:
		push	bp
		mov	bp,sp
		sub	sp,4100
		mov	word [bp-4100],0
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_SKIPWHITESPACE
		jmp	..@j3631
	ALIGN 2
..@j3630:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx+4]
		mov	si,word [bp+6]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	CLASSES$_$TPARSER_$__$$_GETHEXVALUE$CHAR$$BYTE
		mov	ah,0
		mov	cl,4
		shl	ax,cl
		mov	byte [bp-4097],al
		mov	bx,word [bp+6]
		inc	word [bx+8]
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_ISHEXNUM$$BOOLEAN
		test	al,al
		je	..@j3641
		jmp	..@j3642
..@j3641:
		push	word [bp+6]
		push	word [RESSTR_$RTLCONSTS_$$_SPARUNTERMINATEDBINVALUE+2]
		call	CLASSES$_$TPARSER_$__$$_ERROR$ANSISTRING
..@j3642:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx+4]
		mov	si,word [bp+6]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	CLASSES$_$TPARSER_$__$$_GETHEXVALUE$CHAR$$BYTE
		mov	dl,byte [bp-4097]
		or	al,dl
		mov	byte [bp-4097],al
		mov	bx,word [bp+6]
		inc	word [bx+8]
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
		mov	si,word [bp-4100]
		mov	al,byte [bp-4097]
		mov	byte [bp+si-4096],al
		inc	word [bp-4100]
		cmp	word [bp-4100],4096
		jge	..@j3659
		jmp	..@j3660
..@j3659:
		push	word [bp+4]
		lea	ax,[bp-4096]
		push	ax
		mov	ax,word [bp-4100]
		cwd
		push	dx
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
		mov	word [bp-4100],0
..@j3660:
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_SKIPWHITESPACE
..@j3631:
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_ISHEXNUM$$BOOLEAN
		test	al,al
		jne	..@j3630
		jmp	..@j3632
..@j3632:
		cmp	word [bp-4100],0
		jg	..@j3673
		jmp	..@j3674
..@j3673:
		push	word [bp+4]
		lea	ax,[bp-4096]
		push	ax
		mov	ax,word [bp-4100]
		cwd
		push	dx
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
..@j3674:
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
EXTERN	CLASSES$_$TPARSER_$__$$_ERROR$ANSISTRING
EXTERN	RESSTR_$RTLCONSTS_$$_SPARUNTERMINATEDBINVALUE
EXTERN	CLASSES$_$TPARSER_$__$$_ISHEXNUM$$BOOLEAN
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
EXTERN	CLASSES$_$TPARSER_$__$$_GETHEXVALUE$CHAR$$BYTE
EXTERN	CLASSES$_$TPARSER_$__$$_SKIPWHITESPACE
