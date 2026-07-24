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
	GLOBAL MATH_$$_MOMENTSKEWKURTOSIS$crc657812EE
MATH_$$_MOMENTSKEWKURTOSIS$crc657812EE:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	bx,word [bp+14]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,word [bp+16]
		cwd
		mov	word [bp-34],ax
		mov	word [bp-32],dx
		wait fild	dword [bp-34]
		wait fld1
		wait fdivrp	st1,st0
		wait fstp	tword [bp-30]
		DB	09bh
		mov	ax,word [bp+18]
		mov	word [bp-4],ax
		mov	ax,word [bp+16]
		dec	ax
		mov	word [bp-2],0
		cmp	ax,word [bp-2]
		jl	..@j1316
		dec	word [bp-2]
	ALIGN 2
..@j1317:
		inc	word [bp-2]
		mov	bx,word [bp+14]
		mov	si,word [bp-4]
		wait fld	qword [si]
		wait fld	tword [bx]
		wait faddp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx]
		DB	09bh
		add	word [bp-4],8
		cmp	ax,word [bp-2]
		jg	..@j1317
..@j1316:
		mov	bx,word [bp+14]
		wait fld	tword [bp-30]
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
		jl	..@j1333
		dec	word [bp-2]
	ALIGN 2
..@j1334:
		inc	word [bp-2]
		mov	bx,word [bp-4]
		wait fld	qword [bx]
		mov	bx,word [bp+14]
		wait fld	tword [bx]
		wait fsubp	st1,st0
		wait fstp	qword [bp-12]
		DB	09bh
		wait fld	qword [bp-12]
		wait fmul	qword [bp-12]
		wait fstp	qword [bp-20]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp-20]
		wait fld	tword [bx]
		wait faddp	st1,st0
		mov	bx,word [bp+12]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+10]
		wait fld	qword [bp-12]
		wait fmul	qword [bp-20]
		wait fld	tword [bx]
		wait faddp	st1,st0
		mov	bx,word [bp+10]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+8]
		wait fld	qword [bp-20]
		wait fmul	qword [bp-20]
		wait fld	tword [bx]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx]
		DB	09bh
		add	word [bp-4],8
		cmp	ax,word [bp-2]
		jg	..@j1334
..@j1333:
		mov	bx,word [bp+12]
		wait fld	tword [bp-30]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+12]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+10]
		wait fld	tword [bp-30]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+10]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+8]
		wait fld	tword [bp-30]
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
