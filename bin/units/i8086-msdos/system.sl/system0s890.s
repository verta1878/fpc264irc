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
	GLOBAL SYSTEM_$$_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK
SYSTEM_$$_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jl	..@j18570
		jmp	..@j18571
..@j18570:
		jmp	..@j18568
..@j18571:
		mov	ax,word [bp+4]
		add	ax,14
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		and	ax,4080
		mov	word [bp-8],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-16
		mov	dx,word [bp+4]
		add	dx,ax
		mov	ax,word [bp-8]
		sub	dx,ax
		mov	word [bp-4],dx
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	ax,word [bp-8]
		mov	cl,4
		shr	ax,cl
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		mov	word [bp-6],ax
	ALIGN 2
..@j18580:
		mov	bx,word [bp-2]
		cmp	word [bx+2],0
		jne	..@j18584
		jmp	..@j18585
..@j18584:
		mov	bx,word [bp-2]
		mov	si,word [bx+2]
		mov	bx,word [bp-2]
		mov	ax,word [bx+4]
		mov	word [si+4],ax
..@j18585:
		mov	bx,word [bp-2]
		cmp	word [bx+4],0
		jne	..@j18588
		jmp	..@j18589
..@j18588:
		mov	bx,word [bp-2]
		mov	si,word [bx+4]
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		mov	word [si+2],ax
		jmp	..@j18592
..@j18589:
		mov	bx,word [bp-2]
		mov	si,word [bp-6]
		mov	ax,word [bx+2]
		mov	word [si],ax
..@j18592:
		mov	dx,word [bp-2]
		mov	ax,word [bp-8]
		add	ax,dx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		ja	..@j18582
		jmp	..@j18580
..@j18582:
..@j18568:
		mov	sp,bp
		pop	bp
		ret	2
