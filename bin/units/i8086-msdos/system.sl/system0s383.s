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
	GLOBAL fpc_val_sint_ansistr
fpc_val_sint_ansistr:
	GLOBAL FPC_VAL_SINT_ANSISTR
FPC_VAL_SINT_ANSISTR:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9877
		mov	bx,word [bx-2]
..@j9877:
		cmp	bx,255
		jg	..@j9875
		jmp	..@j9876
..@j9875:
		mov	bx,word [bp+4]
		mov	word [bx],256
		jmp	..@j9880
..@j9876:
		lea	ax,[bp-258]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_to_shortstr
		push	word [bp+8]
		lea	ax,[bp-258]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	FPC_VAL_SINT_SHORTSTR
		mov	word [bp-2],ax
..@j9880:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_VAL_SINT_SHORTSTR
EXTERN	fpc_ansistr_to_shortstr
