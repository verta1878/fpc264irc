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
	GLOBAL fpc_read_text_longint
fpc_read_text_longint:
		push	bp
		mov	bp,sp
		sub	sp,262
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23865
		jmp	..@j23866
..@j23865:
		jmp	..@j23861
..@j23866:
		mov	byte [bp-256],0
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
		test	al,al
		jne	..@j23871
		jmp	..@j23872
..@j23871:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23875
		jmp	..@j23876
..@j23875:
		jmp	..@j23861
..@j23876:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
..@j23872:
		lea	ax,[bp-256]
		push	ax
		lea	ax,[bp-262]
		push	ax
		call	fpc_val_longint_shortstr
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	ax,word [bp-262]
		cwd
		mov	word [bp-260],ax
		mov	word [bp-258],dx
		mov	dx,word [bp-260]
		mov	ax,word [bp-258]
		cmp	ax,0
		jne	..@j23891
		cmp	dx,0
		jne	..@j23891
		jmp	..@j23892
..@j23891:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j23895
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j23896
..@j23895:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j23896:
		mov	word [bx],106
..@j23892:
..@j23861:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	fpc_val_longint_shortstr
EXTERN	SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
EXTERN	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
