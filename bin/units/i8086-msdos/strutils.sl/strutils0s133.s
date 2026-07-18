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
	GLOBAL STRUTILS_$$_XORSTRING$SHORTSTRING$SHORTSTRING$$SHORTSTRING
STRUTILS_$$_XORSTRING$SHORTSTRING$SHORTSTRING$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp+6]
		cmp	byte [bx],0
		ja	..@j4086
		jmp	..@j4087
..@j4086:
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		mov	di,ax
		mov	word [bp-2],1
		cmp	di,word [bp-2]
		jl	..@j4091
		dec	word [bp-2]
	ALIGN 2
..@j4092:
		inc	word [bp-2]
		mov	ax,word [bp+6]
		mov	word [bp-10],ax
		mov	ax,word [bp-2]
		dec	ax
		mov	bx,word [bp+6]
		mov	cl,byte [bx]
		mov	ch,0
		cwd
		idiv	cx
		inc	dx
		mov	byte [bp-6],dl
		mov	byte [bp-5],0
		mov	ax,word [bp+4]
		mov	word [bp-12],ax
		mov	al,byte [bp-2]
		mov	byte [bp-8],al
		mov	byte [bp-7],0
		mov	bx,word [bp-10]
		mov	si,word [bp-6]
		mov	dl,byte [bx+si]
		mov	si,word [bp-8]
		mov	bx,word [bp-12]
		mov	al,byte [bx+si]
		xor	al,dl
		mov	bx,word [bp+8]
		mov	dl,byte [bp-2]
		mov	byte [bp-4],dl
		mov	byte [bp-3],0
		mov	si,word [bp-4]
		mov	byte [bx+si],al
		cmp	di,word [bp-2]
		jg	..@j4092
..@j4091:
..@j4087:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_shortstr_to_shortstr
