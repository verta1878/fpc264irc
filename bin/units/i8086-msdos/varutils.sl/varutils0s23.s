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
	GLOBAL VARUTILS_$$_LSTRTOSINGLE$POINTER$$SINGLE
VARUTILS_$$_LSTRTOSINGLE$POINTER$$SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,266
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j899
		mov	bx,word [bx-2]
..@j899:
		cmp	bx,255
		jg	..@j897
		jmp	..@j898
..@j897:
		mov	ax,256
		push	ax
		mov	ax,4
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j898:
		lea	ax,[bp-260]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-260]
		push	ax
		call	VARUTILS_$$_PREPAREFLOATSTR$SHORTSTRING
		lea	ax,[bp-260]
		push	ax
		lea	ax,[bp-262]
		push	ax
		call	fpc_val_real_shortstr
		wait fstp	dword [bp-266]
		DB	09bh
		wait fld	dword [bp-266]
		wait fstp	dword [bp-4]
		DB	09bh
		cmp	word [bp-262],0
		jne	..@j918
		jmp	..@j919
..@j918:
		mov	ax,256
		push	ax
		mov	ax,4
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j919:
		wait fld	dword [bp-4]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_val_real_shortstr
EXTERN	VARUTILS_$$_PREPAREFLOATSTR$SHORTSTRING
EXTERN	fpc_ansistr_to_shortstr
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
