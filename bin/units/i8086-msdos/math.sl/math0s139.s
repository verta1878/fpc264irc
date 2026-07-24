BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL MATH_$$_MAXVALUE$PINTEGER$SMALLINT$$SMALLINT
MATH_$$_MAXVALUE$PINTEGER$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	ax,word [bp+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,cx
		mov	word [bp-6],1
		mov	word [bp-4],0
		cmp	ax,word [bp-4]
		jl	..@j1649
		jg	..@j1651
		cmp	dx,word [bp-6]
		jb	..@j1649
..@j1651:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j1650:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	bx,word [bp+6]
		mov	cx,word [bp-6]
		mov	si,cx
		shl	si,1
		mov	cx,word [bx+si]
		cmp	cx,word [bp-2]
		jg	..@j1652
		jmp	..@j1653
..@j1652:
		mov	bx,word [bp+6]
		mov	cx,word [bp-6]
		mov	si,cx
		shl	si,1
		mov	cx,word [bx+si]
		mov	word [bp-2],cx
..@j1653:
		cmp	ax,word [bp-4]
		jg	..@j1650
		jl	..@j1656
		cmp	dx,word [bp-6]
		ja	..@j1650
..@j1656:
..@j1649:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
