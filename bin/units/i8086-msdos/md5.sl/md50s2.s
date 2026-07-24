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
	GLOBAL MD5_$$_INVERT$POINTER$POINTER$WORD
MD5_$$_INVERT$POINTER$POINTER$WORD:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	cl,2
		shr	bx,cl
		mov	word [bp-6],1
		cmp	bx,word [bp-6]
		jb	..@j12
		dec	word [bp-6]
	ALIGN 2
..@j13:
		inc	word [bp-6]
		mov	si,word [bp-2]
		mov	al,byte [si+1]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	si,word [bp-2]
		mov	dl,byte [si]
		mov	dh,0
		or	dx,ax
		mov	si,word [bp-2]
		mov	al,byte [si+2]
		mov	ah,0
		mov	si,ax
		mov	cl,16
		shl	si,cl
		or	si,dx
		mov	di,word [bp-2]
		mov	al,byte [di+3]
		mov	ah,0
		mov	cl,24
		shl	ax,cl
		or	ax,si
		mov	dx,0
		mov	si,word [bp-4]
		mov	word [si],ax
		mov	word [si+2],dx
		add	word [bp-2],4
		add	word [bp-4],4
		cmp	bx,word [bp-6]
		ja	..@j13
..@j12:
		mov	sp,bp
		pop	bp
		ret	6
