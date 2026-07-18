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
	GLOBAL CHARSET_$$_LOADBINARYUNICODEMAPPING$SHORTSTRING$SHORTSTRING$$PUNICODEMAP
CHARSET_$$_LOADBINARYUNICODEMAPPING$SHORTSTRING$SHORTSTRING$$PUNICODEMAP:
		push	bp
		mov	bp,sp
		sub	sp,270
		lea	ax,[bp-258]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	fpc_shortstr_to_shortstr
		cmp	byte [bp-258],0
		jne	..@j464
		jmp	..@j465
..@j464:
		mov	al,byte [bp-258]
		mov	byte [bp-270],al
		mov	byte [bp-269],0
		mov	si,word [bp-270]
		cmp	byte [bp+si-258],92
		jne	..@j466
		jmp	..@j467
..@j466:
		lea	ax,[bp-258]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-258]
		push	ax
		mov	ax,word _$CHARSET$_Ld2
		push	ax
		call	fpc_shortstr_concat
..@j467:
..@j465:
		lea	ax,[bp-258]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-258]
		mov	word [bp-268],ax
		mov	ax,word [bp+4]
		mov	word [bp-266],ax
		mov	ax,word _$CHARSET$_Ld3
		mov	word [bp-264],ax
		mov	ax,word _$CHARSET$_Ld4
		mov	word [bp-262],ax
		mov	ax,word _$CHARSET$_Ld5
		mov	word [bp-260],ax
		lea	ax,[bp-268]
		push	ax
		mov	ax,4
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-258]
		push	ax
		call	CHARSET_$$_LOADBINARYUNICODEMAPPING$SHORTSTRING$$PUNICODEMAP
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CHARSET_$$_LOADBINARYUNICODEMAPPING$SHORTSTRING$$PUNICODEMAP
EXTERN	fpc_shortstr_concat_multi
EXTERN	_$CHARSET$_Ld5
EXTERN	_$CHARSET$_Ld4
EXTERN	_$CHARSET$_Ld3
EXTERN	fpc_shortstr_concat
EXTERN	_$CHARSET$_Ld2
EXTERN	fpc_shortstr_to_shortstr
