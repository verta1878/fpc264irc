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
	GLOBAL fpc_val_word_ansistr
fpc_val_word_ansistr:
	GLOBAL FPC_VAL_WORD_ANSISTR
FPC_VAL_WORD_ANSISTR:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9989
		mov	bx,word [bx-2]
..@j9989:
		cmp	bx,255
		jg	..@j9987
		jmp	..@j9988
..@j9987:
		mov	bx,word [bp+4]
		mov	word [bx],256
		jmp	..@j9992
..@j9988:
		lea	ax,[bp-258]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-258]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_val_uint_shortstr
		mov	word [bp-2],ax
..@j9992:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_val_uint_shortstr
EXTERN	fpc_ansistr_to_shortstr
