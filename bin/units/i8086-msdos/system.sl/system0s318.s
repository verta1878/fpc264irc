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
	GLOBAL fpc_chararray_uint
fpc_chararray_uint:
		push	bp
		mov	bp,sp
		sub	sp,514
		mov	ax,word [bp+10]
		mov	dx,0
		push	dx
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_INT_STR_UNSIGNED$LONGWORD$OPENSTRING
		mov	al,byte [bp-256]
		mov	ah,0
		cmp	ax,word [bp+8]
		jl	..@j6979
		jmp	..@j6980
..@j6979:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-514]
		push	ax
		mov	dl,byte [bp-256]
		mov	dh,0
		mov	ax,word [bp+8]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_SPACE$BYTE$$SHORTSTRING
		lea	ax,[bp-514]
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_concat
..@j6980:
		mov	dl,byte [bp-256]
		mov	dh,0
		mov	ax,word [bp+4]
		inc	ax
		cmp	dx,ax
		jl	..@j6993
		jmp	..@j6994
..@j6993:
		mov	al,byte [bp-256]
		mov	ah,0
		mov	word [bp-258],ax
		jmp	..@j6997
..@j6994:
		mov	ax,word [bp+4]
		inc	ax
		mov	word [bp-258],ax
..@j6997:
		lea	ax,[bp-256]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		push	word [bp-258]
		call	SYSTEM_$$_FPC_SHORTSTR_CHARARRAY_INTERN_CHARMOVE$SHORTSTRING$array_of_CHAR$SMALLINT
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FPC_SHORTSTR_CHARARRAY_INTERN_CHARMOVE$SHORTSTRING$array_of_CHAR$SMALLINT
EXTERN	fpc_shortstr_concat
EXTERN	SYSTEM_$$_SPACE$BYTE$$SHORTSTRING
EXTERN	SYSTEM_$$_INT_STR_UNSIGNED$LONGWORD$OPENSTRING
