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
	GLOBAL MATH_$$_VARIANCE$PDOUBLE$SMALLINT$$EXTENDED
MATH_$$_VARIANCE$PDOUBLE$SMALLINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,14
		cmp	word [bp+4],1
		je	..@j1219
		jmp	..@j1220
..@j1219:
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j1223
..@j1220:
		push	word [bp+6]
		push	word [bp+4]
		call	MATH_$$_TOTALVARIANCE$PDOUBLE$SMALLINT$$EXTENDED
		mov	ax,word [bp+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-14],cx
		mov	word [bp-12],ax
		wait fild	dword [bp-14]
		wait fdivp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j1223:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	MATH_$$_TOTALVARIANCE$PDOUBLE$SMALLINT$$EXTENDED
