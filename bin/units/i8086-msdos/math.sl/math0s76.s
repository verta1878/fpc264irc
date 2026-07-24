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
	GLOBAL MATH_$$_SUMOFSQUARES$PDOUBLE$SMALLINT$$EXTENDED
MATH_$$_SUMOFSQUARES$PDOUBLE$SMALLINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,14
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
		mov	ax,word [bp+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	di,dx
		mov	dx,cx
		mov	word [bp-14],0
		mov	word [bp-12],0
		cmp	di,word [bp-12]
		jl	..@j817
		jg	..@j819
		cmp	dx,word [bp-14]
		jb	..@j817
..@j819:
		sub	word [bp-14],1
		sbb	word [bp-12],0
	ALIGN 2
..@j818:
		add	word [bp-14],1
		adc	word [bp-12],0
		mov	bx,word [bp+6]
		mov	ax,word [bp-14]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		wait fld	qword [bx+si]
		wait fmul	st0,st0
		wait fld	tword [bp-10]
		wait faddp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		cmp	di,word [bp-12]
		jg	..@j818
		jl	..@j822
		cmp	dx,word [bp-14]
		ja	..@j818
..@j822:
..@j817:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
