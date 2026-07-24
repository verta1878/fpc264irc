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
	GLOBAL MATH_$$_SUMOFSQUARES$PEXTENDED$SMALLINT$$EXTENDED
MATH_$$_SUMOFSQUARES$PEXTENDED$SMALLINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,14
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
		mov	ax,word [bp+4]
		dec	ax
		cwd
		mov	bx,ax
		mov	cx,dx
		mov	di,bx
		mov	word [bp-14],0
		mov	word [bp-12],0
		cmp	cx,word [bp-12]
		jl	..@j865
		jg	..@j867
		cmp	di,word [bp-14]
		jb	..@j865
..@j867:
		sub	word [bp-14],1
		sbb	word [bp-12],0
	ALIGN 2
..@j866:
		add	word [bp-14],1
		adc	word [bp-12],0
		mov	bx,word [bp+6]
		mov	ax,word [bp-14]
		mov	si,ax
		mov	ax,10
		mul	si
		mov	si,ax
		wait fld	tword [bx+si]
		wait fmul	st0,st0
		wait fld	tword [bp-10]
		wait faddp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		cmp	cx,word [bp-12]
		jg	..@j866
		jl	..@j870
		cmp	di,word [bp-14]
		ja	..@j866
..@j870:
..@j865:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
