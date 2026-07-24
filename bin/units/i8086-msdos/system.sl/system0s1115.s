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
	GLOBAL fpc_read_text_float_iso
fpc_read_text_float_iso:
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
		mov	bx,word [bp+4]
		wait fstp	tword [bx]
		DB	09bh
		cmp	word [bp-258],0
		jne	..@j23615
		jmp	..@j23616
..@j23615:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j23619
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j23620
..@j23619:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j23620:
		mov	word [bx],106
..@j23616:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	fpc_val_real_shortstr
EXTERN	SYSTEM_$$_READREAL$TEXT$OPENSTRING
