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
	GLOBAL VARUTILS_$$_SAFEARRAYGETLBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT
VARUTILS_$$_SAFEARRAYGETLBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j5434
		cmp	dx,0
		jne	..@j5434
		jmp	..@j5435
..@j5434:
		jmp	..@j5428
..@j5435:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		cmp	dx,0
		ja	..@j5438
		jb	..@j5437
		cmp	ax,0
		ja	..@j5438
		jmp	..@j5437
..@j5438:
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	ax,0
		cmp	ax,word [bp+8]
		ja	..@j5436
		jb	..@j5437
		cmp	dx,word [bp+6]
		jae	..@j5436
		jmp	..@j5437
		jmp	..@j5437
..@j5436:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [si]
		mov	cx,0
		mov	dx,word [bp+6]
		mov	si,word [bp+8]
		sub	ax,dx
		sbb	cx,si
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	di,word [bp+10]
		mov	ax,word [bx+si+18]
		mov	word [di],ax
		mov	ax,word [bx+si+20]
		mov	word [di+2],ax
		jmp	..@j5441
..@j5437:
		mov	word [bp-4],11
		mov	word [bp-2],-32766
..@j5441:
..@j5428:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
