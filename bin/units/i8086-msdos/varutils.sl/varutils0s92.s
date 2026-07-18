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
	GLOBAL VARUTILS_$$_SAFEARRAYGETUBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT
VARUTILS_$$_SAFEARRAYGETUBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,12
		push	word [bp+4]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5450
		cmp	ax,0
		jne	..@j5450
		jmp	..@j5451
..@j5450:
		jmp	..@j5444
..@j5451:
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		cmp	ax,0
		ja	..@j5454
		jb	..@j5453
		cmp	dx,0
		ja	..@j5454
		jmp	..@j5453
..@j5454:
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	ax,0
		cmp	ax,word [bp+8]
		ja	..@j5452
		jb	..@j5453
		cmp	dx,word [bp+6]
		jae	..@j5452
		jmp	..@j5453
		jmp	..@j5453
..@j5452:
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,0
		mov	cx,word [bp+6]
		mov	bx,word [bp+8]
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-10],ax
		mov	cl,3
		shl	word [bp-10],cl
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	cx,0
		mov	bx,word [bp+6]
		mov	si,word [bp+8]
		mov	dx,ax
		mov	ax,cx
		sub	dx,bx
		sbb	ax,si
		mov	ax,dx
		mov	word [bp-12],ax
		mov	cl,3
		shl	word [bp-12],cl
		mov	bx,word [bp-6]
		mov	si,word [bp-10]
		mov	di,word [bx+si+18]
		mov	bx,word [bp-6]
		mov	si,word [bp-10]
		mov	cx,word [bx+si+20]
		mov	bx,word [bp-8]
		mov	si,word [bp-12]
		mov	ax,word [bx+si+14]
		mov	bx,word [bp-8]
		mov	si,word [bp-12]
		mov	dx,word [bx+si+16]
		add	ax,di
		adc	dx,cx
		sub	ax,1
		sbb	dx,0
		mov	bx,word [bp+10]
		mov	word [bx],ax
		mov	word [bx+2],dx
		jmp	..@j5457
..@j5453:
		mov	word [bp-4],11
		mov	word [bp-2],-32766
..@j5457:
..@j5444:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
