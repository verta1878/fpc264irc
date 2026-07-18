BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL fpc_val_currency_ansistr
fpc_val_currency_ansistr:
	GLOBAL FPC_VAL_CURRENCY_ANSISTR
FPC_VAL_CURRENCY_ANSISTR:
		push	bp
		mov	bp,sp
		sub	sp,264
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9831
		mov	bx,word [bx-2]
..@j9831:
		cmp	bx,255
		jg	..@j9829
		jmp	..@j9830
..@j9829:
		wait fldz
		wait fistp	qword [bp-8]
		DB	09bh
		mov	bx,word [bp+4]
		mov	word [bx],256
		jmp	..@j9836
..@j9830:
		lea	ax,[bp-264]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-264]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_val_real_shortstr
		wait fld	tword [_$SYSTEM$_Ld20]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
..@j9836:
		wait fild	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	_$SYSTEM$_Ld20
EXTERN	fpc_val_real_shortstr
EXTERN	fpc_ansistr_to_shortstr
