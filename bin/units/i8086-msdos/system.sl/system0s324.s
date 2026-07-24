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
	GLOBAL fpc_chararray_smallint
fpc_chararray_smallint:
		push	bp
		mov	bp,sp
		sub	sp,514
		mov	ax,word [bp+10]
		cwd
		push	dx
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_INT_STR$LONGINT$OPENSTRING
		mov	al,byte [bp-256]
		mov	ah,0
		cmp	ax,word [bp+8]
		jl	..@j7201
		jmp	..@j7202
..@j7201:
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
..@j7202:
		mov	dl,byte [bp-256]
		mov	dh,0
		mov	ax,word [bp+4]
		inc	ax
		cmp	dx,ax
		jl	..@j7215
		jmp	..@j7216
..@j7215:
		mov	al,byte [bp-256]
		mov	ah,0
		mov	word [bp-258],ax
		jmp	..@j7219
..@j7216:
		mov	ax,word [bp+4]
		inc	ax
		mov	word [bp-258],ax
..@j7219:
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
EXTERN	SYSTEM_$$_INT_STR$LONGINT$OPENSTRING
