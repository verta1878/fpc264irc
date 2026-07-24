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
	GLOBAL MATH_$$_MEANANDSTDDEV$PSINGLE$LONGINT$EXTENDED$EXTENDED
MATH_$$_MEANANDSTDDEV$PSINGLE$LONGINT$EXTENDED$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+4]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		sub	dx,1
		sbb	ax,0
		mov	word [bp-4],0
		mov	word [bp-2],0
		cmp	ax,word [bp-2]
		jl	..@j974
		jg	..@j976
		cmp	dx,word [bp-4]
		jb	..@j974
..@j976:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j975:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	di,word [bp+6]
		mov	bx,word [bp+12]
		mov	cx,word [bp-4]
		mov	si,cx
		mov	cl,2
		shl	si,cl
		wait fld	dword [bx+si]
		wait fld	tword [di]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		wait fstp	tword [bx]
		DB	09bh
		mov	di,word [bp+4]
		mov	bx,word [bp+12]
		mov	cx,word [bp-4]
		mov	si,cx
		mov	cl,2
		shl	si,cl
		wait fld	dword [bx+si]
		wait fmul	st0,st0
		wait fld	tword [di]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fstp	tword [bx]
		DB	09bh
		cmp	ax,word [bp-2]
		jg	..@j975
		jl	..@j981
		cmp	dx,word [bp-4]
		ja	..@j975
..@j981:
..@j974:
		mov	bx,word [bp+6]
		wait fild	dword [bp+8]
		wait fld	tword [bx]
		wait fdivrp	st1,st0
		mov	bx,word [bp+6]
		wait fstp	tword [bx]
		DB	09bh
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		wait fld	tword [bx]
		wait fmul	st0,st0
		wait fild	dword [bp+8]
		wait fmulp	st1,st0
		wait fld	tword [si]
		wait fsubrp	st1,st0
		mov	bx,word [bp+4]
		wait fstp	tword [bx]
		DB	09bh
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,0
		jg	..@j986
		jl	..@j987
		cmp	dx,1
		ja	..@j986
		jmp	..@j987
..@j986:
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
		jmp	..@j990
..@j987:
		mov	bx,word [bp+4]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
..@j990:
		mov	sp,bp
		pop	bp
		ret	10
