BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL SYSUTILS_$$_ISDELIMITER$ANSISTRING$ANSISTRING$SMALLINT$$BOOLEAN
SYSUTILS_$$_ISDELIMITER$ANSISTRING$ANSISTRING$SMALLINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-1],0
		cmp	word [bp+4],0
		jg	..@j8812
		jmp	..@j8811
..@j8812:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j8813
		mov	bx,word [bx-2]
..@j8813:
		cmp	bx,word [bp+4]
		jge	..@j8810
		jmp	..@j8811
..@j8810:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		push	word [bp+8]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		test	ax,ax
		mov	al,0
		je	..@j8820
		inc	ax
..@j8820:
		mov	byte [bp-1],al
..@j8811:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
