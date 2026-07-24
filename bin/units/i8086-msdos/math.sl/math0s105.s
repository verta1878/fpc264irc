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
	GLOBAL MATH_$$_MEANANDSTDDEV$PDOUBLE$LONGINT$EXTENDED$EXTENDED
MATH_$$_MEANANDSTDDEV$PDOUBLE$LONGINT$EXTENDED$EXTENDED:
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
		jl	..@j1190
		jg	..@j1192
		cmp	dx,word [bp-4]
		jb	..@j1190
..@j1192:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j1191:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	di,word [bp+6]
		mov	bx,word [bp+12]
		mov	cx,word [bp-4]
		mov	si,cx
		mov	cl,3
		shl	si,cl
		wait fld	qword [bx+si]
		wait fld	tword [di]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		wait fstp	tword [bx]
		DB	09bh
		mov	di,word [bp+4]
		mov	bx,word [bp+12]
		mov	cx,word [bp-4]
		mov	si,cx
		mov	cl,3
		shl	si,cl
		wait fld	qword [bx+si]
		wait fmul	st0,st0
		wait fld	tword [di]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fstp	tword [bx]
		DB	09bh
		cmp	ax,word [bp-2]
		jg	..@j1191
		jl	..@j1197
		cmp	dx,word [bp-4]
		ja	..@j1191
..@j1197:
..@j1190:
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
		jg	..@j1202
		jl	..@j1203
		cmp	dx,1
		ja	..@j1202
		jmp	..@j1203
..@j1202:
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
		jmp	..@j1206
..@j1203:
		mov	bx,word [bp+4]
		wait fldz
		wait fstp	tword [bx]
		DB	09bh
..@j1206:
		mov	sp,bp
		pop	bp
		ret	10
