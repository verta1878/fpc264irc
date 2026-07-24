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
	GLOBAL fpc_chararray_int64
fpc_chararray_int64:
		push	bp
		mov	bp,sp
		sub	sp,514
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_INT_STR$INT64$OPENSTRING
		mov	al,byte [bp-256]
		mov	ah,0
		cmp	ax,word [bp+8]
		jl	..@j7053
		jmp	..@j7054
..@j7053:
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
..@j7054:
		mov	dl,byte [bp-256]
		mov	dh,0
		mov	ax,word [bp+4]
		inc	ax
		cmp	dx,ax
		jl	..@j7067
		jmp	..@j7068
..@j7067:
		mov	al,byte [bp-256]
		mov	ah,0
		mov	word [bp-258],ax
		jmp	..@j7071
..@j7068:
		mov	ax,word [bp+4]
		inc	ax
		mov	word [bp-258],ax
..@j7071:
		lea	ax,[bp-256]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		push	word [bp-258]
		call	SYSTEM_$$_FPC_SHORTSTR_CHARARRAY_INTERN_CHARMOVE$SHORTSTRING$array_of_CHAR$SMALLINT
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	SYSTEM_$$_FPC_SHORTSTR_CHARARRAY_INTERN_CHARMOVE$SHORTSTRING$array_of_CHAR$SMALLINT
EXTERN	fpc_shortstr_concat
EXTERN	SYSTEM_$$_SPACE$BYTE$$SHORTSTRING
EXTERN	SYSTEM_$$_INT_STR$INT64$OPENSTRING
