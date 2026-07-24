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
	GLOBAL MATH_$$_SUMSANDSQUARES$PSINGLE$SMALLINT$EXTENDED$EXTENDED
MATH_$$_SUMSANDSQUARES$PSINGLE$SMALLINT$EXTENDED$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+4]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
		mov	dx,word [bp+8]
		dec	dx
		mov	word [bp-2],0
		cmp	dx,word [bp-2]
		jl	..@j794
		dec	word [bp-2]
	ALIGN 2
..@j795:
		inc	word [bp-2]
		mov	bx,word [bp+10]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		wait fld	dword [bx+si]
		wait fstp	tword [bp-12]
		DB	09bh
		wait fld	tword [bp-12]
		wait fmul	st0,st0
		mov	bx,word [bp+4]
		wait fld	tword [bx]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+6]
		wait fld	tword [bp-12]
		wait fld	tword [bx]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		wait fstp	tword [bx]
		DB	09bh
		cmp	dx,word [bp-2]
		jg	..@j795
..@j794:
		mov	sp,bp
		pop	bp
		ret	8
