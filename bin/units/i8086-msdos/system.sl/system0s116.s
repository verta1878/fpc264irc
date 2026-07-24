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
	GLOBAL SYSTEM_$$_INT_STR_UNSIGNED$QWORD$OPENSTRING
SYSTEM_$$_INT_STR_UNSIGNED$QWORD$OPENSTRING:
		push	bp
		mov	bp,sp
		sub	sp,86
		mov	bx,word [bp+6]
		lea	ax,[bx+1]
		mov	word [bp-12],ax
		mov	ax,word [bp-12]
		mov	word [bp-16],ax
		lea	ax,[bp-81]
		mov	word [bp-10],ax
		mov	ax,word [bp-10]
		mov	word [bp-14],ax
	ALIGN 2
..@j1884:
		inc	word [bp-14]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		call	fpc_div_qword
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
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
		mov	si,word [bp+8]
		mov	di,word [bp+10]
		sub	si,dx
		sbb	di,cx
		mov	dx,si
		mov	cx,di
		mov	si,word [bp+12]
		mov	di,word [bp+14]
		sbb	si,bx
		sbb	di,ax
		mov	bx,si
		mov	ax,di
		add	dx,48
		adc	cx,0
		adc	bx,0
		adc	ax,0
		mov	bx,word [bp-14]
		mov	byte [bx],dl
		lea	di,[bp+8]
		push	ds
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+8]
		mov	cx,word [bp+10]
		mov	dx,word [bp+12]
		mov	ax,word [bp+14]
		cmp	ax,0
		jne	..@j1884
		cmp	dx,0
		jne	..@j1884
		cmp	cx,0
		jne	..@j1884
		cmp	bx,0
		jne	..@j1884
		jmp	..@j1886
..@j1886:
		mov	ax,word [bp-14]
		mov	dx,word [bp-10]
		sub	ax,dx
		mov	dx,word [bp+4]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-86],cx
		mov	word [bp-84],ax
		mov	dx,word [bp-86]
		mov	ax,word [bp-84]
		cmp	ax,0
		jg	..@j1905
		jl	..@j1906
		cmp	dx,0
		ja	..@j1905
		jmp	..@j1906
..@j1905:
		mov	ax,word [bp-86]
		add	word [bp-10],ax
..@j1906:
		jmp	..@j1908
	ALIGN 2
..@j1907:
		mov	si,word [bp-16]
		mov	bx,word [bp-14]
		mov	al,byte [bx]
		mov	byte [si],al
		inc	word [bp-16]
		dec	word [bp-14]
..@j1908:
		mov	ax,word [bp-14]
		cmp	ax,word [bp-10]
		ja	..@j1907
		jmp	..@j1909
..@j1909:
		mov	ax,word [bp-16]
		mov	dx,word [bp-12]
		sub	ax,dx
		mov	bx,word [bp+6]
		mov	byte [bx],al
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	fpc_mul_qword
EXTERN	fpc_div_qword
