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
	GLOBAL MATH_$$_MOMENTSKEWKURTOSIS$crcD4640B92
MATH_$$_MOMENTSKEWKURTOSIS$crcD4640B92:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	bx,word [bp+14]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,word [bp+16]
		cwd
		mov	word [bp-26],ax
		mov	word [bp-24],dx
		wait fild	dword [bp-26]
		wait fld1
		wait fdivrp	st1,st0
		wait fstp	tword [bp-22]
		DB	09bh
		mov	ax,word [bp+18]
		mov	word [bp-4],ax
		mov	ax,word [bp+16]
		dec	ax
		mov	word [bp-2],0
		cmp	ax,word [bp-2]
		jl	..@j1100
		dec	word [bp-2]
	ALIGN 2
..@j1101:
		inc	word [bp-2]
		mov	bx,word [bp+14]
		mov	si,word [bp-4]
		wait fld	dword [si]
		wait fld	tword [bx]
		wait faddp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx]
		DB	09bh
		add	word [bp-4],4
		cmp	ax,word [bp-2]
		jg	..@j1101
..@j1100:
		mov	bx,word [bp+14]
		wait fld	tword [bp-22]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+12]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+10]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+8]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,word [bp+18]
		mov	word [bp-4],ax
		mov	ax,word [bp+16]
		dec	ax
		mov	word [bp-2],0
		cmp	ax,word [bp-2]
		jl	..@j1117
		dec	word [bp-2]
	ALIGN 2
..@j1118:
		inc	word [bp-2]
		mov	bx,word [bp-4]
		wait fld	dword [bx]
		mov	bx,word [bp+14]
		wait fld	tword [bx]
		wait fsubp	st1,st0
		wait fstp	dword [bp-8]
		DB	09bh
		wait fld	dword [bp-8]
		wait fmul	dword [bp-8]
		wait fstp	dword [bp-12]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	dword [bp-12]
		wait fld	tword [bx]
		wait faddp	st1,st0
		mov	bx,word [bp+12]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+10]
		wait fld	dword [bp-8]
		wait fmul	dword [bp-12]
		wait fld	tword [bx]
		wait faddp	st1,st0
		mov	bx,word [bp+10]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+8]
		wait fld	dword [bp-12]
		wait fmul	dword [bp-12]
		wait fld	tword [bx]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx]
		DB	09bh
		add	word [bp-4],4
		cmp	ax,word [bp-2]
		jg	..@j1118
..@j1117:
		mov	bx,word [bp+12]
		wait fld	tword [bp-22]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+12]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+10]
		wait fld	tword [bp-22]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+10]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+8]
		wait fld	tword [bp-22]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx]
		DB	09bh
		mov	si,word [bp+10]
		mov	bx,word [bp+12]
		wait fld	tword [bx]
		wait fsqrt
		mov	bx,word [bp+12]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		wait fld	tword [si]
		wait fdivrp	st1,st0
		mov	bx,word [bp+6]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+8]
		mov	di,word [bp+12]
		mov	si,word [bp+12]
		wait fld	tword [si]
		wait fld	tword [di]
		wait fmulp	st1,st0
		wait fld	tword [bx]
		wait fdivrp	st1,st0
		mov	bx,word [bp+4]
		wait fstp	tword [bx]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	16
