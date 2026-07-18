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
	GLOBAL STRUTILS_$$_COPY2SYMB$ANSISTRING$CHAR$$ANSISTRING
STRUTILS_$$_COPY2SYMB$ANSISTRING$CHAR$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		push	word [bp+6]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j2996
		jmp	..@j2997
..@j2996:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j3000
		mov	bx,word [bx-2]
..@j3000:
		inc	bx
		mov	word [bp-2],bx
..@j2997:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	ax,1
		push	ax
		mov	ax,word [bp-2]
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_copy
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
