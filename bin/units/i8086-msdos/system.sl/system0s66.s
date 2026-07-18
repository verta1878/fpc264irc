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
	GLOBAL SYSTEM_$$_INDEXQWORD$formal$SMALLINT$QWORD$$SMALLINT
SYSTEM_$$_INDEXQWORD$formal$SMALLINT$QWORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+14]
		mov	word [bp-4],ax
		cmp	word [bp+12],0
		jl	..@j540
		jmp	..@j543
..@j543:
		cmp	word [bp+12],8191
		jg	..@j540
		jmp	..@j542
..@j542:
		mov	ax,word [bp+12]
		mov	cl,3
		shl	ax,cl
		mov	dx,word [bp-4]
		add	dx,ax
		cmp	dx,word [bp-4]
		jb	..@j540
		jmp	..@j541
..@j540:
		mov	word [bp-6],-9
		jmp	..@j546
..@j541:
		mov	ax,word [bp+12]
		mov	cl,3
		shl	ax,cl
		mov	dx,word [bp-4]
		add	dx,ax
		mov	word [bp-6],dx
..@j546:
		jmp	..@j550
	ALIGN 2
..@j549:
		mov	bx,word [bp-4]
		mov	si,word [bx]
		mov	cx,word [bx+2]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+10]
		jne	..@j553
		cmp	dx,word [bp+8]
		jne	..@j553
		cmp	cx,word [bp+6]
		jne	..@j553
		cmp	si,word [bp+4]
		jne	..@j553
		jmp	..@j552
		jmp	..@j553
..@j552:
		mov	ax,word [bp+14]
		mov	dx,word [bp-4]
		sub	dx,ax
		test	dx,dx
		jns	..@j556
		add	dx,7
..@j556:
		mov	cl,3
		sar	dx,cl
		mov	word [bp-2],dx
		jmp	..@j536
..@j553:
		add	word [bp-4],8
..@j550:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jb	..@j549
		jmp	..@j551
..@j551:
		mov	word [bp-2],-1
..@j536:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	12
