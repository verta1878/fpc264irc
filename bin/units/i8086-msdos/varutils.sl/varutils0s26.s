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
	GLOBAL VARUTILS_$$_WSTRTODOUBLE$POINTER$$DOUBLE
VARUTILS_$$_WSTRTODOUBLE$POINTER$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,274
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1113
		mov	bx,word [bx-2]
..@j1113:
		cmp	bx,255
		jg	..@j1111
		jmp	..@j1112
..@j1111:
		mov	ax,8
		push	ax
		mov	ax,5
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1112:
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
		wait fstp	qword [bp-274]
		DB	09bh
		wait fld	qword [bp-274]
		wait fstp	qword [bp-8]
		DB	09bh
		cmp	word [bp-266],0
		jne	..@j1132
		jmp	..@j1133
..@j1132:
		mov	ax,8
		push	ax
		mov	ax,5
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1133:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_val_real_shortstr
EXTERN	VARUTILS_$$_PREPAREFLOATSTR$SHORTSTRING
EXTERN	fpc_unicodestr_to_shortstr
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
