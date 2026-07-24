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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_INDEXOF$POINTER$$LONGINT
OBJECTS$_$TCOLLECTION_$__$$_INDEXOF$POINTER$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		cmp	dx,0
		jg	..@j1755
		jl	..@j1756
		cmp	ax,0
		ja	..@j1755
		jmp	..@j1756
..@j1755:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	cx,word [bx+6]
		sub	dx,1
		sbb	cx,0
		mov	word [bp-8],0
		mov	word [bp-6],0
		cmp	cx,word [bp-6]
		jl	..@j1760
		jg	..@j1762
		cmp	dx,word [bp-8]
		jb	..@j1760
..@j1762:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j1761:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		cmp	ax,word [bp+4]
		je	..@j1763
		jmp	..@j1764
..@j1763:
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
		jmp	..@j1753
..@j1764:
		cmp	cx,word [bp-6]
		jg	..@j1761
		jl	..@j1767
		cmp	dx,word [bp-8]
		ja	..@j1761
..@j1767:
..@j1760:
..@j1756:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
..@j1753:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
