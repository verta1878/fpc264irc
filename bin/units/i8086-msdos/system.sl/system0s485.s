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
	GLOBAL SYSTEM_$$_POS$CHAR$UNICODESTRING$$SMALLINT
SYSTEM_$$_POS$CHAR$UNICODESTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		call	fpc_char_to_uchar
		mov	word [bp-6],ax
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j12269
		mov	bx,word [bx-2]
..@j12269:
		mov	word [bp-4],1
		cmp	bx,word [bp-4]
		jl	..@j12271
		dec	word [bp-4]
	ALIGN 2
..@j12272:
		inc	word [bp-4]
		mov	si,word [bp-8]
		mov	ax,word [si]
		cmp	ax,word [bp-6]
		je	..@j12273
		jmp	..@j12274
..@j12273:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j12259
..@j12274:
		add	word [bp-8],2
		cmp	bx,word [bp-4]
		jg	..@j12272
..@j12271:
		mov	word [bp-2],0
..@j12259:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_char_to_uchar
