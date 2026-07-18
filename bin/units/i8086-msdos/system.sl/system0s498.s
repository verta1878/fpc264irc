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
	GLOBAL fpc_val_sint_unicodestr
fpc_val_sint_unicodestr:
	GLOBAL FPC_VAL_SINT_UNICODESTR
FPC_VAL_SINT_UNICODESTR:
		push	bp
		mov	bp,sp
		sub	sp,514
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j12568
		mov	bx,word [bx-2]
..@j12568:
		cmp	bx,255
		jg	..@j12566
		jmp	..@j12567
..@j12566:
		mov	bx,word [bp+4]
		mov	word [bx],256
		jmp	..@j12571
..@j12567:
		lea	ax,[bp-258]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-514]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		call	fpc_unicodestr_to_shortstr
		lea	ax,[bp-514]
		push	ax
		call	fpc_shortstr_to_shortstr
		push	word [bp+8]
		lea	ax,[bp-258]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	FPC_VAL_SINT_SHORTSTR
		mov	word [bp-2],ax
..@j12571:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_VAL_SINT_SHORTSTR
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_unicodestr_to_shortstr
