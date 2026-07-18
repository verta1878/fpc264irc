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
	GLOBAL fpc_read_text_currency_iso
fpc_read_text_currency_iso:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_READREAL$TEXT$OPENSTRING
		lea	ax,[bp-256]
		push	ax
		lea	ax,[bp-258]
		push	ax
		call	fpc_val_real_shortstr
		wait fld	tword [_$SYSTEM$_Ld20]
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		wait fistp	qword [bx]
		DB	09bh
		cmp	word [bp-258],0
		jne	..@j23703
		jmp	..@j23704
..@j23703:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j23707
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j23708
..@j23707:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j23708:
		mov	word [bx],106
..@j23704:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	_$SYSTEM$_Ld20
EXTERN	fpc_val_real_shortstr
EXTERN	SYSTEM_$$_READREAL$TEXT$OPENSTRING
