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
	GLOBAL SYSTEM_$$_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$SMALLINT
SYSTEM_$$_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-8],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-10],ax
		mov	ax,word [bp-8]
		cmp	ax,word [bp-10]
		jg	..@j8249
		jmp	..@j8250
..@j8249:
		mov	ax,word [bp-10]
		mov	word [bp-12],ax
		jmp	..@j8253
..@j8250:
		mov	ax,word [bp-8]
		mov	word [bp-12],ax
..@j8253:
		mov	word [bp-6],0
		mov	bx,word [bp+6]
		lea	ax,[bx+1]
		mov	word [bp-14],ax
		mov	bx,word [bp+4]
		lea	ax,[bx+1]
		mov	word [bp-16],ax
		jmp	..@j8263
	ALIGN 2
..@j8262:
		mov	bx,word [bp-14]
		mov	al,byte [bx]
		mov	byte [bp-3],al
		mov	bx,word [bp-16]
		mov	al,byte [bx]
		mov	byte [bp-4],al
		mov	al,byte [bp-3]
		cmp	al,byte [bp-4]
		jne	..@j8269
		jmp	..@j8270
..@j8269:
		mov	al,byte [bp-3]
		mov	ah,0
		sub	ax,97
		cmp	ax,26
		jb	..@j8273
..@j8273:
		jc	..@j8271
		jmp	..@j8272
..@j8271:
		sub	byte [bp-3],32
..@j8272:
		mov	al,byte [bp-4]
		mov	ah,0
		sub	ax,97
		cmp	ax,26
		jb	..@j8276
..@j8276:
		jc	..@j8274
		jmp	..@j8275
..@j8274:
		sub	byte [bp-4],32
..@j8275:
		mov	al,byte [bp-3]
		cmp	al,byte [bp-4]
		jne	..@j8277
		jmp	..@j8278
..@j8277:
		jmp	..@j8264
..@j8278:
..@j8270:
		inc	word [bp-14]
		inc	word [bp-16]
		inc	word [bp-6]
..@j8263:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-12]
		jl	..@j8262
		jmp	..@j8264
..@j8264:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-12]
		jl	..@j8279
		jmp	..@j8280
..@j8279:
		mov	al,byte [bp-3]
		mov	ah,0
		mov	dl,byte [bp-4]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
		jmp	..@j8283
..@j8280:
		mov	ax,word [bp-8]
		mov	dx,word [bp-10]
		sub	ax,dx
		mov	word [bp-2],ax
..@j8283:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
