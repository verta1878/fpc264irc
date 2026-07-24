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
	GLOBAL SYSTEM_$$_DIY_UTIL_ADD$LONGWORD$QWORD$LONGWORD$QWORD
SYSTEM_$$_DIY_UTIL_ADD$LONGWORD$QWORD$LONGWORD$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+16]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		mov	dx,word [bx+4]
		mov	bx,word [bx+6]
		add	ax,word [bp+4]
		adc	cx,word [bp+6]
		adc	dx,word [bp+8]
		adc	bx,word [bp+10]
		mov	word [bp-8],ax
		mov	word [bp-6],cx
		mov	word [bp-4],dx
		mov	word [bp-2],bx
		mov	bx,word [bp+16]
		mov	dx,word [bx]
		mov	si,word [bx+2]
		mov	cx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-2]
		ja	..@j4277
		jb	..@j4278
		cmp	cx,word [bp-4]
		ja	..@j4277
		jb	..@j4278
		cmp	si,word [bp-6]
		ja	..@j4277
		jb	..@j4278
		cmp	dx,word [bp-8]
		ja	..@j4277
		jmp	..@j4278
		jmp	..@j4278
..@j4277:
		mov	al,1
		jmp	..@j4279
..@j4278:
		mov	al,0
..@j4279:
		mov	cx,0
		mov	dl,al
		mov	dh,0
		mov	bx,word [bp+18]
		mov	si,word [bx]
		mov	di,word [bx+2]
		mov	ax,word [bp+12]
		mov	bx,word [bp+14]
		add	ax,si
		adc	bx,di
		add	ax,dx
		adc	bx,cx
		mov	si,word [bp+18]
		mov	word [si],ax
		mov	word [si+2],bx
		mov	di,word [bp+16]
		push	ds
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	16
