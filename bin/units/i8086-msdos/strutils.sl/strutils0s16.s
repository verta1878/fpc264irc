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
	GLOBAL STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_ISPREFIX$crc4D84E505
STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_ISPREFIX$crc4D84E505:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+6]
		mov	dx,word [bp+4]
		sub	ax,dx
		mov	word [bp-6],ax
		mov	dx,word [bp-6]
		dec	dx
		mov	word [bp-4],0
		cmp	dx,word [bp-4]
		jl	..@j465
		dec	word [bp-4]
	ALIGN 2
..@j466:
		inc	word [bp-4]
		mov	ax,word [bp+8]
		mov	word [bp-8],ax
		mov	cx,word [bp+4]
		mov	ax,word [bp-4]
		add	ax,cx
		mov	di,ax
		mov	ax,word [bp+8]
		mov	word [bp-10],ax
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		mov	bx,word [bp-8]
		mov	al,byte [bx+di]
		mov	bx,word [bp-10]
		cmp	al,byte [bx+si]
		jne	..@j467
		jmp	..@j468
..@j467:
		mov	byte [bp-1],0
		jmp	..@j236
..@j468:
		cmp	dx,word [bp-4]
		jg	..@j466
..@j465:
		mov	byte [bp-1],1
..@j236:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
