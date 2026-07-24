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
	GLOBAL fpc_read_text_currency
fpc_read_text_currency:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	bx,word [bp+4]
		wait fldz
		wait fistp	qword [bx]
		DB	09bh
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23659
		jmp	..@j23660
..@j23659:
		jmp	..@j23655
..@j23660:
		mov	byte [bp-256],0
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
		test	al,al
		jne	..@j23665
		jmp	..@j23666
..@j23665:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23669
		jmp	..@j23670
..@j23669:
		jmp	..@j23655
..@j23670:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
..@j23666:
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
		jne	..@j23683
		jmp	..@j23684
..@j23683:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j23687
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j23688
..@j23687:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j23688:
		mov	word [bx],106
..@j23684:
..@j23655:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	_$SYSTEM$_Ld20
EXTERN	fpc_val_real_shortstr
EXTERN	SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
EXTERN	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
