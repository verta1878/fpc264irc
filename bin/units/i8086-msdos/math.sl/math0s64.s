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
	GLOBAL MATH_$$_SUM$PDOUBLE$LONGINT$$EXTENDED
MATH_$$_SUM$PDOUBLE$LONGINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,14
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
		mov	dx,word [bp+4]
		mov	di,word [bp+6]
		sub	dx,1
		sbb	di,0
		mov	word [bp-14],0
		mov	word [bp-12],0
		cmp	di,word [bp-12]
		jl	..@j688
		jg	..@j690
		cmp	dx,word [bp-14]
		jb	..@j688
..@j690:
		sub	word [bp-14],1
		sbb	word [bp-12],0
	ALIGN 2
..@j689:
		add	word [bp-14],1
		adc	word [bp-12],0
		mov	bx,word [bp+8]
		mov	ax,word [bp-14]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		wait fld	qword [bx+si]
		wait fld	tword [bp-10]
		wait faddp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		cmp	di,word [bp-12]
		jg	..@j689
		jl	..@j693
		cmp	dx,word [bp-14]
		ja	..@j689
..@j693:
..@j688:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	6
