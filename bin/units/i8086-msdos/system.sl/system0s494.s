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
	GLOBAL fpc_val_real_unicodestr
fpc_val_real_unicodestr:
	GLOBAL FPC_VAL_REAL_UNICODESTR
FPC_VAL_REAL_UNICODESTR:
		push	bp
		mov	bp,sp
		sub	sp,522
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j12458
		mov	bx,word [bx-2]
..@j12458:
		cmp	bx,255
		jg	..@j12456
		jmp	..@j12457
..@j12456:
		mov	bx,word [bp+4]
		mov	word [bx],256
		jmp	..@j12461
..@j12457:
		lea	ax,[bp-266]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-522]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		call	fpc_unicodestr_to_shortstr
		lea	ax,[bp-522]
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-266]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_val_real_shortstr
		wait fstp	tword [bp-10]
		DB	09bh
..@j12461:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_val_real_shortstr
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_unicodestr_to_shortstr
