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
	GLOBAL fpc_val_real_ansistr
fpc_val_real_ansistr:
	GLOBAL FPC_VAL_REAL_ANSISTR
FPC_VAL_REAL_ANSISTR:
		push	bp
		mov	bp,sp
		sub	sp,266
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9811
		mov	bx,word [bx-2]
..@j9811:
		cmp	bx,255
		jg	..@j9809
		jmp	..@j9810
..@j9809:
		mov	bx,word [bp+4]
		mov	word [bx],256
		jmp	..@j9814
..@j9810:
		lea	ax,[bp-266]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-266]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_val_real_shortstr
		wait fstp	tword [bp-10]
		DB	09bh
..@j9814:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_val_real_shortstr
EXTERN	fpc_ansistr_to_shortstr
