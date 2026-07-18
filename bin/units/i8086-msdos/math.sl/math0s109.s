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
	GLOBAL MATH_$$_TOTALVARIANCE$PDOUBLE$SMALLINT$$EXTENDED
MATH_$$_TOTALVARIANCE$PDOUBLE$SMALLINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,34
		cmp	word [bp+4],1
		je	..@j1240
		jmp	..@j1241
..@j1240:
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j1244
..@j1241:
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-30]
		push	ax
		call	MATH_$$_SUMSANDSQUARES$PDOUBLE$SMALLINT$EXTENDED$EXTENDED
		wait fld	tword [bp-20]
		wait fmul	st0,st0
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-34],ax
		mov	word [bp-32],dx
		wait fild	dword [bp-34]
		wait fdivp	st1,st0
		wait fld	tword [bp-30]
		wait fsubrp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j1244:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	MATH_$$_SUMSANDSQUARES$PDOUBLE$SMALLINT$EXTENDED$EXTENDED
