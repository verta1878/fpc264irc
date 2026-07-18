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
	GLOBAL MATH_$$_MEANANDSTDDEV$PEXTENDED$LONGINT$EXTENDED$EXTENDED
MATH_$$_MEANANDSTDDEV$PEXTENDED$LONGINT$EXTENDED$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+4]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-10],ax
		mov	cx,dx
		mov	word [bp-4],0
		mov	word [bp-2],0
		cmp	cx,word [bp-2]
		jl	..@j1406
		jg	..@j1408
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		jb	..@j1406
..@j1408:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j1407:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+12]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	ax,10
		mul	si
		mov	si,ax
		mov	di,word [bp+6]
		wait fld	tword [di]
		wait fld	tword [bx+si]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+12]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	ax,10
		mul	si
		mov	si,ax
		wait fld	tword [bx+si]
		wait fmul	st0,st0
		mov	bx,word [bp+4]
		wait fld	tword [bx]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fstp	tword [bx]
		DB	09bh
		cmp	cx,word [bp-2]
		jg	..@j1407
		jl	..@j1413
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		ja	..@j1407
..@j1413:
..@j1406:
		mov	bx,word [bp+6]
		wait fild	dword [bp+8]
		wait fld	tword [bx]
		wait fdivrp	st1,st0
		mov	bx,word [bp+6]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		wait fld	tword [si]
		wait fmul	st0,st0
		wait fild	dword [bp+8]
		wait fmulp	st1,st0
		wait fld	tword [bx]
		wait fsubrp	st1,st0
		mov	bx,word [bp+4]
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,0
		jg	..@j1418
		jl	..@j1419
		cmp	ax,1
		ja	..@j1418
		jmp	..@j1419
..@j1418:
		mov	bx,word [bp+4]
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		wait fild	dword [bp-8]
		wait fld	tword [bx]
		wait fdivrp	st1,st0
		wait fsqrt
		mov	bx,word [bp+4]
		wait fstp	tword [bx]
		DB	09bh
		jmp	..@j1422
..@j1419:
		mov	bx,word [bp+4]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
..@j1422:
		mov	sp,bp
		pop	bp
		ret	10
