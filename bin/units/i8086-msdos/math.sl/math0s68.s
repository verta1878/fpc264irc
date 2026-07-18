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
	GLOBAL MATH_$$_SUM$PEXTENDED$LONGINT$$EXTENDED
MATH_$$_SUM$PEXTENDED$LONGINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,14
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
		mov	ax,word [bp+4]
		mov	cx,word [bp+6]
		sub	ax,1
		sbb	cx,0
		mov	di,ax
		mov	word [bp-14],0
		mov	word [bp-12],0
		cmp	cx,word [bp-12]
		jl	..@j727
		jg	..@j729
		cmp	di,word [bp-14]
		jb	..@j727
..@j729:
		sub	word [bp-14],1
		sbb	word [bp-12],0
	ALIGN 2
..@j728:
		add	word [bp-14],1
		adc	word [bp-12],0
		mov	bx,word [bp+8]
		mov	ax,word [bp-14]
		mov	si,ax
		mov	ax,10
		mul	si
		mov	si,ax
		wait fld	tword [bp-10]
		wait fld	tword [bx+si]
		wait faddp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		cmp	cx,word [bp-12]
		jg	..@j728
		jl	..@j732
		cmp	di,word [bp-14]
		ja	..@j728
..@j732:
..@j727:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	6
