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
	GLOBAL SYSTEM_$$_SPLIT_BLOCK$PMEMCHUNK_VAR$WORD$$WORD
SYSTEM_$$_SPLIT_BLOCK$PMEMCHUNK_VAR$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		and	ax,-16
		mov	word [bp-8],ax
		mov	ax,word [bp-8]
		mov	dx,0
		mov	cx,word [bp+4]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-10],ax
		cmp	word [bp-10],10
		jae	..@j18696
		jmp	..@j18697
..@j18696:
		mov	dx,word [bp+6]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		and	ax,4
		test	ax,ax
		je	..@j18700
		jmp	..@j18701
..@j18700:
		mov	ax,word [bp+6]
		mov	bx,word [bp-8]
		add	bx,ax
		mov	ax,word [bp-10]
		mov	word [bx],ax
..@j18701:
		mov	ax,word [bp-6]
		and	ax,4
		mov	dx,word [bp-10]
		or	dx,ax
		mov	bx,word [bp-4]
		mov	word [bx+4],dx
		mov	bx,word [bp-4]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	si,word [bp-4]
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [si+2],ax
		mov	ax,word [bp-6]
		and	ax,11
		mov	dx,word [bp+4]
		or	dx,ax
		mov	bx,word [bp+6]
		mov	word [bx+4],dx
		mov	bx,word [bp-4]
		mov	bx,word [bx+2]
		lea	ax,[bx+80]
		mov	word [bp-12],ax
		mov	bx,word [bp-4]
		mov	word [bx+8],0
		mov	si,word [bp-4]
		mov	bx,word [bp-12]
		mov	ax,word [bx]
		mov	word [si+6],ax
		mov	bx,word [bp-12]
		cmp	word [bx],0
		jne	..@j18719
		jmp	..@j18720
..@j18719:
		mov	bx,word [bp-12]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	word [bx+8],ax
..@j18720:
		mov	bx,word [bp-12]
		mov	ax,word [bp-4]
		mov	word [bx],ax
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		jmp	..@j18727
..@j18697:
		mov	ax,word [bp-8]
		mov	word [bp-2],ax
..@j18727:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
