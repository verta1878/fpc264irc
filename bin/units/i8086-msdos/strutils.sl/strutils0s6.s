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
	GLOBAL STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE2$crc8D20DCFF
STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE2$crc8D20DCFF:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+4]
		dec	ax
		mov	word [bp-4],ax
		mov	ax,word [bp+4]
		dec	ax
		mov	word [bp-2],ax
		jmp	..@j155
	ALIGN 2
..@j154:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [bp-2]
		inc	ax
		push	ax
		call	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_ISPREFIX$crc4D84E505
		test	al,al
		jne	..@j157
		jmp	..@j158
..@j157:
		mov	ax,word [bp-2]
		inc	ax
		mov	word [bp-4],ax
..@j158:
		mov	ax,word [bp+4]
		dec	ax
		mov	dx,word [bp-2]
		sub	ax,dx
		mov	dx,word [bp-4]
		add	dx,ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	word [bx+si],dx
		dec	word [bp-2]
..@j155:
		cmp	word [bp-2],0
		jge	..@j154
		jmp	..@j156
..@j156:
		mov	word [bp-2],0
		jmp	..@j174
	ALIGN 2
..@j173:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-2]
		call	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_SUFFIXLENGTH$crcA0BC55D4
		mov	word [bp-6],ax
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
		mov	ax,word [bp+4]
		dec	ax
		mov	dx,word [bp-6]
		sub	ax,dx
		mov	di,ax
		mov	ax,word [bp+6]
		mov	word [bp-10],ax
		mov	ax,word [bp-2]
		mov	dx,word [bp-6]
		sub	ax,dx
		mov	si,ax
		mov	bx,word [bp-8]
		mov	al,byte [bx+di]
		mov	bx,word [bp-10]
		cmp	al,byte [bx+si]
		jne	..@j186
		jmp	..@j187
..@j186:
		mov	ax,word [bp+4]
		dec	ax
		mov	dx,word [bp-2]
		sub	ax,dx
		mov	dx,word [bp-6]
		add	dx,ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	cx,word [bp+4]
		dec	cx
		mov	ax,word [bp-6]
		sub	cx,ax
		mov	si,cx
		shl	si,1
		mov	word [bx+si],dx
..@j187:
		inc	word [bp-2]
..@j174:
		mov	ax,word [bp+4]
		dec	ax
		cmp	ax,word [bp-2]
		jg	..@j173
		jmp	..@j175
..@j175:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_SUFFIXLENGTH$crcA0BC55D4
EXTERN	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_ISPREFIX$crc4D84E505
