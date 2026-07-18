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
	GLOBAL KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+6]
		cmp	byte [bx],0
		je	..@j164
		jmp	..@j165
..@j164:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j172
..@j165:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		mov	ax,word _$KEYBOARD$_Ld1
		mov	word [bp-4],ax
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		lea	ax,[bp-6]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
..@j172:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_shortstr_concat_multi
EXTERN	_$KEYBOARD$_Ld1
EXTERN	fpc_shortstr_to_shortstr
