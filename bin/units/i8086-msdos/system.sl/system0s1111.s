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
	GLOBAL fpc_read_text_sint_iso
fpc_read_text_sint_iso:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_READINTEGER$TEXT$OPENSTRING
		mov	ax,2
		push	ax
		lea	ax,[bp-256]
		push	ax
		lea	ax,[bp-258]
		push	ax
		call	fpc_val_sint_shortstr
		mov	bx,word [bp+4]
		mov	word [bx],ax
		cmp	word [bp-258],0
		jne	..@j23502
		jmp	..@j23503
..@j23502:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j23506
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j23507
..@j23506:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j23507:
		mov	word [bx],106
..@j23503:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	fpc_val_sint_shortstr
EXTERN	SYSTEM_$$_READINTEGER$TEXT$OPENSTRING
