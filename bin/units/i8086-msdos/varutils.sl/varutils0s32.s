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
	GLOBAL VARUTILS_$$_USTRTOCURRENCY$POINTER$$CURRENCY
VARUTILS_$$_USTRTOCURRENCY$POINTER$$CURRENCY:
		push	bp
		mov	bp,sp
		sub	sp,266
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1414
		mov	bx,word [bx-2]
..@j1414:
		cmp	bx,255
		jg	..@j1412
		jmp	..@j1413
..@j1412:
		mov	ax,258
		push	ax
		mov	ax,6
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1413:
		lea	ax,[bp-264]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_unicodestr_to_shortstr
		lea	ax,[bp-264]
		push	ax
		call	VARUTILS_$$_PREPAREFLOATSTR$SHORTSTRING
		lea	ax,[bp-264]
		push	ax
		lea	ax,[bp-266]
		push	ax
		call	fpc_val_real_shortstr
		wait fld	tword [_$VARUTILS$_Ld6]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		cmp	word [bp-266],0
		jne	..@j1433
		jmp	..@j1434
..@j1433:
		mov	ax,258
		push	ax
		mov	ax,6
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1434:
		wait fild	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	_$VARUTILS$_Ld6
EXTERN	fpc_val_real_shortstr
EXTERN	VARUTILS_$$_PREPAREFLOATSTR$SHORTSTRING
EXTERN	fpc_unicodestr_to_shortstr
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
