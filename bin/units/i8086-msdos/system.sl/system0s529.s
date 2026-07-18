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
	GLOBAL SYSTEM_$$_UCS4DECODE$UCS4STRING$PWIDECHAR
SYSTEM_$$_UCS4DECODE$UCS4STRING$PWIDECHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	di,word [bp+6]
		test	di,di
		je	..@j13575
		mov	di,word [di-2]
		inc	di
..@j13575:
		sub	di,2
		mov	word [bp-2],0
		cmp	di,word [bp-2]
		jl	..@j13577
		dec	word [bp-2]
	ALIGN 2
..@j13578:
		inc	word [bp-2]
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	word [bp-6],ax
		mov	ax,word [bx+si+2]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,0
		jb	..@j13581
		ja	..@j13582
		cmp	ax,-1
		jbe	..@j13581
		jmp	..@j13582
..@j13581:
		mov	bx,word [bp+4]
		mov	ax,word [bp-6]
		mov	word [bx],ax
		jmp	..@j13585
..@j13582:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,16
		jb	..@j13586
		ja	..@j13587
		cmp	ax,-1
		jbe	..@j13586
		jmp	..@j13587
..@j13586:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		mov	cx,10
..@j13590:
		shr	dx,1
		rcr	ax,1
		loop	..@j13590
		add	ax,-10304
		adc	dx,0
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		and	ax,1023
		mov	dx,0
		add	ax,-9216
		adc	dx,0
		mov	bx,word [bp+4]
		mov	word [bx+2],ax
		add	word [bp+4],2
		jmp	..@j13593
..@j13587:
		mov	bx,word [bp+4]
		mov	word [bx],63
..@j13593:
..@j13585:
		add	word [bp+4],2
		cmp	di,word [bp-2]
		jg	..@j13578
..@j13577:
		mov	sp,bp
		pop	bp
		ret	4
