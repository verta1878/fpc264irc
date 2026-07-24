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
	GLOBAL MATH_$$_MINVALUE$PSINGLE$SMALLINT$$SINGLE
MATH_$$_MINVALUE$PSINGLE$SMALLINT$$SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	ax,word [bp+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	di,cx
		mov	dx,ax
		mov	word [bp-8],1
		mov	word [bp-6],0
		cmp	dx,word [bp-6]
		jl	..@j1672
		jg	..@j1674
		cmp	di,word [bp-8]
		jb	..@j1672
..@j1674:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j1673:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	bx,word [bp+6]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		wait fld	dword [bp-4]
		wait fld	dword [bx+si]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1677
		jb	..@j1675
..@j1677:
		jmp	..@j1676
..@j1675:
		mov	bx,word [bp+6]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	word [bp-4],ax
		mov	ax,word [bx+si+2]
		mov	word [bp-2],ax
..@j1676:
		cmp	dx,word [bp-6]
		jg	..@j1673
		jl	..@j1680
		cmp	di,word [bp-8]
		ja	..@j1673
..@j1680:
..@j1672:
		wait fld	dword [bp-4]
		mov	sp,bp
		pop	bp
		ret	4
