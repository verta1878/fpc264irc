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
	GLOBAL SYSTEM_$$_INT_STR$INT64$OPENSTRING
SYSTEM_$$_INT_STR$INT64$OPENSTRING:
		push	bp
		mov	bp,sp
		sub	sp,62
		mov	bx,word [bp+6]
		lea	ax,[bx+1]
		mov	word [bp-20],ax
		mov	ax,word [bp-20]
		mov	word [bp-24],ax
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		mov	cx,word [bp+12]
		mov	bx,word [bp+14]
		cmp	bx,0
		jl	..@j1831
		jg	..@j1832
		cmp	cx,0
		jb	..@j1831
		ja	..@j1832
		cmp	ax,0
		jb	..@j1831
		ja	..@j1832
		cmp	dx,0
		jb	..@j1831
		jmp	..@j1832
..@j1831:
		mov	bx,word [bp-24]
		mov	byte [bx],45
		inc	word [bp-24]
		mov	ax,word [bp+8]
		mov	cx,word [bp+10]
		mov	bx,word [bp+12]
		mov	dx,word [bp+14]
		not	bx
		not	dx
		not	cx
		neg	ax
		sbb	cx,-1
		sbb	bx,-1
		sbb	dx,-1
		mov	word [bp-8],ax
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],dx
		jmp	..@j1837
..@j1832:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+8]
		cld
		mov	cx,4
		rep
		movsw
..@j1837:
		lea	ax,[bp-57]
		mov	word [bp-18],ax
		mov	ax,word [bp-18]
		mov	word [bp-22],ax
	ALIGN 2
..@j1844:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		call	fpc_div_qword
		mov	word [bp-16],dx
		mov	word [bp-14],cx
		mov	word [bp-12],bx
		mov	word [bp-10],ax
		inc	word [bp-22]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	si,word [bp-8]
		mov	di,word [bp-6]
		sub	si,dx
		sbb	di,cx
		mov	dx,si
		mov	cx,di
		mov	si,word [bp-4]
		mov	di,word [bp-2]
		sbb	si,bx
		sbb	di,ax
		mov	bx,si
		mov	ax,di
		add	dx,48
		adc	cx,0
		adc	bx,0
		adc	ax,0
		mov	bx,word [bp-22]
		mov	byte [bx],dl
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp-8]
		mov	cx,word [bp-6]
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j1844
		cmp	dx,0
		jne	..@j1844
		cmp	cx,0
		jne	..@j1844
		cmp	bx,0
		jne	..@j1844
		jmp	..@j1846
..@j1846:
		mov	dx,word [bp-22]
		mov	ax,word [bp-18]
		sub	dx,ax
		mov	ax,word [bp-24]
		mov	cx,word [bp-20]
		sub	ax,cx
		add	ax,dx
		mov	dx,word [bp+4]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-62],cx
		mov	word [bp-60],ax
		mov	dx,word [bp-62]
		mov	ax,word [bp-60]
		cmp	ax,0
		jg	..@j1865
		jl	..@j1866
		cmp	dx,0
		ja	..@j1865
		jmp	..@j1866
..@j1865:
		mov	ax,word [bp-62]
		add	word [bp-18],ax
..@j1866:
		jmp	..@j1868
	ALIGN 2
..@j1867:
		mov	si,word [bp-24]
		mov	bx,word [bp-22]
		mov	al,byte [bx]
		mov	byte [si],al
		inc	word [bp-24]
		dec	word [bp-22]
..@j1868:
		mov	ax,word [bp-22]
		cmp	ax,word [bp-18]
		ja	..@j1867
		jmp	..@j1869
..@j1869:
		mov	ax,word [bp-24]
		mov	dx,word [bp-20]
		sub	ax,dx
		mov	bx,word [bp+6]
		mov	byte [bx],al
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	fpc_mul_qword
EXTERN	fpc_div_qword
