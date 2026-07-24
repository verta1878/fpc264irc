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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_PACK
OBJECTS$_$TCOLLECTION_$__$$_PACK:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	word [bp-8],0
		mov	word [bp-6],0
		jmp	..@j1843
	ALIGN 2
..@j1842:
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],0
		jne	..@j1845
		jmp	..@j1846
..@j1845:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,word [bp-6]
		jne	..@j1847
		cmp	dx,word [bp-8]
		jne	..@j1847
		jmp	..@j1848
		jmp	..@j1848
..@j1847:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-10],ax
		mov	ax,word [bp-4]
		mov	di,ax
		shl	di,1
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	bx,word [bp-10]
		mov	word [bx+di],ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	word [bx+si],0
..@j1848:
		add	word [bp-4],1
		adc	word [bp-2],0
..@j1846:
		add	word [bp-8],1
		adc	word [bp-6],0
..@j1843:
		mov	bx,word [bp+4]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-2]
		jg	..@j1853
		jl	..@j1844
		cmp	dx,word [bp-4]
		ja	..@j1853
		jmp	..@j1844
		jmp	..@j1844
..@j1853:
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,word [bp-6]
		jg	..@j1842
		jl	..@j1844
		cmp	dx,word [bp-8]
		ja	..@j1842
		jmp	..@j1844
		jmp	..@j1844
..@j1844:
		mov	bx,word [bp+4]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-2]
		jg	..@j1854
		jl	..@j1855
		cmp	dx,word [bp-4]
		ja	..@j1854
		jmp	..@j1855
		jmp	..@j1855
..@j1854:
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bx+4],ax
		mov	ax,word [bp-2]
		mov	word [bx+6],ax
..@j1855:
		mov	sp,bp
		pop	bp
		ret	2
