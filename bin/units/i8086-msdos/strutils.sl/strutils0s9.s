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
	GLOBAL STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE1$crcA210156B
STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE1$crcA210156B:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],0
		dec	word [bp-2]
	ALIGN 2
..@j213:
		inc	word [bp-2]
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+4]
		mov	word [bx+si],ax
		cmp	word [bp-2],255
		jl	..@j213
		mov	ax,word [bp+4]
		dec	ax
		dec	ax
		mov	word [bp-2],0
		cmp	ax,word [bp-2]
		jl	..@j219
		dec	word [bp-2]
	ALIGN 2
..@j220:
		inc	word [bp-2]
		mov	dx,word [bp+4]
		dec	dx
		mov	cx,word [bp-2]
		sub	dx,cx
		mov	cx,word [bp+8]
		mov	word [bp-4],cx
		mov	bx,word [bp+6]
		mov	si,word [bp-2]
		mov	cl,byte [bx+si]
		mov	ch,0
		mov	si,cx
		shl	si,1
		mov	bx,word [bp-4]
		mov	word [bx+si],dx
		cmp	ax,word [bp-2]
		jg	..@j220
..@j219:
		mov	sp,bp
		pop	bp
		ret	8
