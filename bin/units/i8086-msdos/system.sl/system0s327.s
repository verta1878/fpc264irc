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
	GLOBAL fpc_chararray_bool
fpc_chararray_bool:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	al,byte [bp+10]
		mov	ah,0
		push	ax
		push	word [bp+8]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	FPC_SHORTSTR_BOOL
		mov	dl,byte [bp-256]
		mov	dh,0
		mov	ax,word [bp+4]
		inc	ax
		cmp	dx,ax
		jl	..@j7298
		jmp	..@j7299
..@j7298:
		mov	al,byte [bp-256]
		mov	ah,0
		mov	word [bp-258],ax
		jmp	..@j7302
..@j7299:
		mov	ax,word [bp+4]
		inc	ax
		mov	word [bp-258],ax
..@j7302:
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
EXTERN	FPC_SHORTSTR_BOOL
