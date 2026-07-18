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
	GLOBAL STRINGS_$$_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
STRINGS_$$_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	byte [bp-3],0
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		je	..@j274
		jmp	..@j275
..@j274:
		mov	bx,word [bp+6]
		mov	byte [bx],0
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		jmp	..@j270
..@j275:
		mov	bx,word [bp+4]
		mov	dl,byte [bx]
		mov	byte [bp-3],1
		cmp	dl,byte [bp-3]
		jb	..@j283
		dec	byte [bp-3]
	ALIGN 2
..@j284:
		inc	byte [bp-3]
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
		mov	al,byte [bp-3]
		mov	ah,0
		dec	ax
		mov	di,ax
		mov	bx,word [bp+4]
		mov	al,byte [bp-3]
		mov	byte [bp-6],al
		mov	byte [bp-5],0
		mov	si,word [bp-6]
		mov	al,byte [bx+si]
		mov	bx,word [bp-8]
		mov	byte [bx+di],al
		cmp	dl,byte [bp-3]
		ja	..@j284
..@j283:
		mov	bx,word [bp+6]
		mov	al,byte [bp-3]
		mov	ah,0
		mov	si,ax
		mov	byte [bx+si],0
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j270:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
