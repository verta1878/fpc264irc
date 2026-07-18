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
	GLOBAL STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_MAX$SMALLINT$SMALLINT$$SMALLINT
STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_MAX$SMALLINT$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		cmp	ax,word [bp+4]
		jg	..@j223
		jmp	..@j224
..@j223:
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		jmp	..@j227
..@j224:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
..@j227:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
