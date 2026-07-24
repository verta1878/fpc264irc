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
	GLOBAL fpc_chararray_currency
fpc_chararray_currency:
		push	bp
		mov	bp,sp
		sub	sp,258
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_currency
		mov	dl,byte [bp-256]
		mov	dh,0
		mov	ax,word [bp+4]
		inc	ax
		cmp	dx,ax
		jl	..@j7325
		jmp	..@j7326
..@j7325:
		mov	al,byte [bp-256]
		mov	ah,0
		mov	word [bp-258],ax
		jmp	..@j7329
..@j7326:
		mov	ax,word [bp+4]
		inc	ax
		mov	word [bp-258],ax
..@j7329:
		lea	ax,[bp-256]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		push	word [bp-258]
		call	SYSTEM_$$_FPC_SHORTSTR_CHARARRAY_INTERN_CHARMOVE$SHORTSTRING$array_of_CHAR$SMALLINT
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	SYSTEM_$$_FPC_SHORTSTR_CHARARRAY_INTERN_CHARMOVE$SHORTSTRING$array_of_CHAR$SMALLINT
EXTERN	fpc_shortstr_currency
