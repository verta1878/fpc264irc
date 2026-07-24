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
	GLOBAL KEYBOARD_$$_SHIFTSTATETOSTRING$LONGWORD$BOOLEAN$$SHORTSTRING
KEYBOARD_$$_SHIFTSTATETOSTRING$LONGWORD$BOOLEAN$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,1036
		push	word [bp+8]
		push	word [bp+6]
		call	KEYBOARD_$$_GETKEYEVENTSHIFTSTATE$LONGWORD$$BYTE
		mov	ah,0
		mov	word [bp-2],ax
		mov	byte [bp-258],0
		mov	ax,word [bp-2]
		and	ax,3
		test	ax,ax
		jne	..@j199
		jmp	..@j200
..@j199:
		cmp	byte [bp+4],0
		jne	..@j201
		jmp	..@j202
..@j201:
		mov	ax,word [bp-2]
		and	ax,3
		cmp	ax,1
		jl	..@j204
		dec	ax
		je	..@j206
		dec	ax
		je	..@j207
		dec	ax
		je	..@j205
		jmp	..@j204
..@j205:
		lea	ax,[bp-258]
		push	ax
		lea	ax,[bp-514]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-780]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word TC_$KEYBOARD_$$_SLEFTRIGHT
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-780]
		mov	word [bp-524],ax
		mov	ax,word _$KEYBOARD$_Ld1
		mov	word [bp-522],ax
		mov	ax,word TC_$KEYBOARD_$$_SAND
		mov	word [bp-520],ax
		mov	ax,word _$KEYBOARD$_Ld1
		mov	word [bp-518],ax
		lea	ax,[bp-1036]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word TC_$KEYBOARD_$$_SLEFTRIGHT+6
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-1036]
		mov	word [bp-516],ax
		lea	ax,[bp-524]
		push	ax
		mov	ax,4
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-514]
		push	ax
		call	KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
		jmp	..@j203
..@j206:
		lea	ax,[bp-258]
		push	ax
		mov	ax,word TC_$KEYBOARD_$$_SLEFTRIGHT
		push	ax
		call	KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
		jmp	..@j203
..@j207:
		lea	ax,[bp-258]
		push	ax
		mov	ax,word TC_$KEYBOARD_$$_SLEFTRIGHT+6
		push	ax
		call	KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
		jmp	..@j203
..@j204:
..@j203:
..@j202:
		lea	ax,[bp-258]
		push	ax
		mov	ax,word TC_$KEYBOARD_$$_SSHIFT
		push	ax
		call	KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
..@j200:
		mov	ax,word [bp-2]
		and	ax,4
		test	ax,ax
		jne	..@j244
		jmp	..@j245
..@j244:
		lea	ax,[bp-258]
		push	ax
		mov	ax,word TC_$KEYBOARD_$$_SSHIFT+6
		push	ax
		call	KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
..@j245:
		mov	ax,word [bp-2]
		and	ax,8
		test	ax,ax
		jne	..@j250
		jmp	..@j251
..@j250:
		lea	ax,[bp-258]
		push	ax
		mov	ax,word TC_$KEYBOARD_$$_SSHIFT+12
		push	ax
		call	KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
..@j251:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-258]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	TC_$KEYBOARD_$$_SSHIFT
EXTERN	KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
EXTERN	fpc_shortstr_concat_multi
EXTERN	TC_$KEYBOARD_$$_SAND
EXTERN	_$KEYBOARD$_Ld1
EXTERN	fpc_shortstr_to_shortstr
EXTERN	TC_$KEYBOARD_$$_SLEFTRIGHT
EXTERN	KEYBOARD_$$_GETKEYEVENTSHIFTSTATE$LONGWORD$$BYTE
