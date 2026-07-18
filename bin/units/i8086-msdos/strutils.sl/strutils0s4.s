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
	GLOBAL STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_ADDMATCH$SMALLINT
STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_ADDMATCH$SMALLINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx-2]
		cmp	ax,word [si-4]
		je	..@j132
		jmp	..@j133
..@j132:
		mov	ax,word [bp+6]
		push	ax
		call	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_RESIZEALLOCATEDMATCHES
..@j133:
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		mov	si,word [bp+6]
		mov	ax,word [si-2]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+4]
		mov	word [bx+si],ax
		mov	bx,word [bp+6]
		inc	word [bx-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_RESIZEALLOCATEDMATCHES
