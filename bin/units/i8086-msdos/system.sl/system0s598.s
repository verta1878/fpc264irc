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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal
SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-18],ax
		jmp	..@j14860
	ALIGN 2
..@j14859:
		mov	bx,word [bp-18]
		mov	ax,word [bx+8]
		mov	word [bp-16],ax
		cmp	word [bp-16],0
		jne	..@j14864
		jmp	..@j14865
..@j14864:
		mov	bx,word [bp-16]
		lea	ax,[bx+4]
		mov	word [bp-14],ax
		mov	bx,word [bp-16]
		mov	ax,word [bx]
		mov	word [bp-8],ax
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		jmp	..@j14870
..@j14865:
		mov	word [bp-8],0
		mov	word [bp-6],0
..@j14870:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-26],ax
		mov	word [bp-24],dx
		mov	word [bp-12],0
		mov	word [bp-10],0
		mov	ax,word [bp-24]
		cmp	ax,word [bp-10]
		jl	..@j14876
		jg	..@j14878
		mov	ax,word [bp-26]
		cmp	ax,word [bp-12]
		jb	..@j14876
..@j14878:
		sub	word [bp-12],1
		sbb	word [bp-10],0
	ALIGN 2
..@j14877:
		add	word [bp-12],1
		adc	word [bp-10],0
		mov	bx,word [bp-14]
		mov	ax,word [bp-12]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	dx,word [bx+si]
		mov	ax,word [bx+si+2]
		cmp	ax,word [bp-2]
		jne	..@j14880
		cmp	dx,word [bp-4]
		jne	..@j14880
		jmp	..@j14879
		jmp	..@j14880
..@j14879:
		mov	bx,word [bp-14]
		mov	ax,word [bp-12]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	ax,word [bx+si+4]
		mov	word [bp-22],ax
		mov	ax,word [bp+6]
		mov	word [bp-20],ax
		push	word [bp-20]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-22]
		call	ax
		jmp	..@j14851
..@j14880:
		mov	ax,word [bp-24]
		cmp	ax,word [bp-10]
		jg	..@j14877
		jl	..@j14889
		mov	ax,word [bp-26]
		cmp	ax,word [bp-12]
		ja	..@j14877
..@j14889:
..@j14876:
		mov	bx,word [bp-18]
		mov	ax,word [bx+4]
		mov	word [bp-18],ax
..@j14860:
		cmp	word [bp-18],0
		jne	..@j14859
		jmp	..@j14861
..@j14861:
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+32]
		call	ax
..@j14851:
		mov	sp,bp
		pop	bp
		ret	4
