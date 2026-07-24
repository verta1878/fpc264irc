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
	GLOBAL STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_ISPREFIX$crc4D84E505
STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_ISPREFIX$crc4D84E505:
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
		jl	..@j203
		dec	word [bp-4]
	ALIGN 2
..@j204:
		inc	word [bp-4]
		mov	ax,word [bp+8]
		mov	word [bp-8],ax
		mov	cx,word [bp+4]
		mov	ax,word [bp-4]
		add	ax,cx
		mov	si,ax
		mov	ax,word [bp+8]
		mov	word [bp-10],ax
		mov	di,word [bp-4]
		mov	bx,word [bp-8]
		mov	al,byte [bx+si]
		mov	bx,word [bp-10]
		cmp	al,byte [bx+di]
		jne	..@j205
		jmp	..@j206
..@j205:
		mov	byte [bp-1],0
		jmp	..@j27
..@j206:
		cmp	dx,word [bp-4]
		jg	..@j204
..@j203:
		mov	byte [bp-1],1
..@j27:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
