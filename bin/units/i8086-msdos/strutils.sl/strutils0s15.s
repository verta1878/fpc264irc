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
	GLOBAL STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_SUFFIXLENGTH$crcA0BC55D4
STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_SUFFIXLENGTH$crcA0BC55D4:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-4],0
		jmp	..@j455
	ALIGN 2
..@j454:
		inc	word [bp-4]
..@j455:
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	ax,word [bp+6]
		dec	ax
		mov	dx,word [bp-4]
		sub	ax,dx
		mov	di,ax
		mov	ax,word [bp+8]
		mov	word [bp-8],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp-4]
		sub	ax,dx
		mov	si,ax
		mov	bx,word [bp-6]
		mov	al,byte [bx+di]
		mov	bx,word [bp-8]
		cmp	al,byte [bx+si]
		je	..@j457
		jmp	..@j456
..@j457:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		jl	..@j454
		jmp	..@j456
..@j456:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
