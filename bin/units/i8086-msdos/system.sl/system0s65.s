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
	GLOBAL SYSTEM_$$_INDEXDWORD$formal$SMALLINT$LONGWORD$$SMALLINT
SYSTEM_$$_INDEXDWORD$formal$SMALLINT$LONGWORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+10]
		mov	word [bp-4],ax
		cmp	word [bp+8],0
		jl	..@j517
		jmp	..@j520
..@j520:
		cmp	word [bp+8],16383
		jg	..@j517
		jmp	..@j519
..@j519:
		mov	ax,word [bp+8]
		mov	cl,2
		shl	ax,cl
		mov	dx,word [bp-4]
		add	dx,ax
		cmp	dx,word [bp-4]
		jb	..@j517
		jmp	..@j518
..@j517:
		mov	word [bp-6],-5
		jmp	..@j523
..@j518:
		mov	ax,word [bp+8]
		mov	cl,2
		shl	ax,cl
		mov	dx,word [bp-4]
		add	dx,ax
		mov	word [bp-6],dx
..@j523:
		jmp	..@j527
	ALIGN 2
..@j526:
		mov	bx,word [bp-4]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,word [bp+6]
		jne	..@j530
		cmp	dx,word [bp+4]
		jne	..@j530
		jmp	..@j529
		jmp	..@j530
..@j529:
		mov	ax,word [bp+10]
		mov	dx,word [bp-4]
		sub	dx,ax
		test	dx,dx
		jns	..@j533
		add	dx,3
..@j533:
		mov	cl,2
		sar	dx,cl
		mov	word [bp-2],dx
		jmp	..@j513
..@j530:
		add	word [bp-4],4
..@j527:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jb	..@j526
		jmp	..@j528
..@j528:
		mov	word [bp-2],-1
..@j513:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
