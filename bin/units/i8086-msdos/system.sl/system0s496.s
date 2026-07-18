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
	GLOBAL fpc_val_currency_unicodestr
fpc_val_currency_unicodestr:
	GLOBAL FPC_VAL_CURRENCY_UNICODESTR
FPC_VAL_CURRENCY_UNICODESTR:
		push	bp
		mov	bp,sp
		sub	sp,520
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j12510
		mov	bx,word [bx-2]
..@j12510:
		cmp	bx,255
		jg	..@j12508
		jmp	..@j12509
..@j12508:
		wait fldz
		wait fistp	qword [bp-8]
		DB	09bh
		mov	bx,word [bp+4]
		mov	word [bx],256
		jmp	..@j12515
..@j12509:
		lea	ax,[bp-264]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-520]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		call	fpc_unicodestr_to_shortstr
		lea	ax,[bp-520]
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-264]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_val_real_shortstr
		wait fld	tword [_$SYSTEM$_Ld20]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
..@j12515:
		wait fild	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	_$SYSTEM$_Ld20
EXTERN	fpc_val_real_shortstr
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_unicodestr_to_shortstr
