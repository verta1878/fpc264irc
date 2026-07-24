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
	GLOBAL fpc_read_text_enum
fpc_read_text_enum:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23623
		jmp	..@j23624
..@j23623:
		jmp	..@j23621
..@j23624:
		mov	byte [bp-256],0
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
		test	al,al
		jne	..@j23629
		jmp	..@j23630
..@j23629:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23633
		jmp	..@j23634
..@j23633:
		jmp	..@j23621
..@j23634:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
..@j23630:
		push	word [bp+8]
		lea	ax,[bp-256]
		push	ax
		lea	ax,[bp-258]
		push	ax
		call	FPC_VAL_ENUM_SHORTSTR
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		cmp	word [bp-258],0
		jne	..@j23649
		jmp	..@j23650
..@j23649:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j23653
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j23654
..@j23653:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j23654:
		mov	word [bx],106
..@j23650:
..@j23621:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_VAL_ENUM_SHORTSTR
EXTERN	SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
EXTERN	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
