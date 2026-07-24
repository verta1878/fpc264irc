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
	GLOBAL SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		cmp	word [bp+6],0
		jl	..@j494
		jmp	..@j497
..@j497:
		jmp	..@j496
..@j496:
		mov	ax,word [bp+6]
		shl	ax,1
		mov	dx,word [bp-4]
		add	dx,ax
		cmp	dx,word [bp-4]
		jb	..@j494
		jmp	..@j495
..@j494:
		mov	word [bp-6],-3
		jmp	..@j500
..@j495:
		mov	ax,word [bp+6]
		shl	ax,1
		mov	dx,word [bp-4]
		add	dx,ax
		mov	word [bp-6],dx
..@j500:
		jmp	..@j504
	ALIGN 2
..@j503:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		cmp	ax,word [bp+4]
		je	..@j506
		jmp	..@j507
..@j506:
		mov	ax,word [bp+8]
		mov	dx,word [bp-4]
		sub	dx,ax
		test	dx,dx
		jns	..@j510
		inc	dx
..@j510:
		sar	dx,1
		mov	word [bp-2],dx
		jmp	..@j490
..@j507:
		add	word [bp-4],2
..@j504:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jb	..@j503
		jmp	..@j505
..@j505:
		mov	word [bp-2],-1
..@j490:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
