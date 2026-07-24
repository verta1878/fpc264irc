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
	GLOBAL fpc_read_text_uint
fpc_read_text_uint:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23512
		jmp	..@j23513
..@j23512:
		jmp	..@j23508
..@j23513:
		mov	byte [bp-256],0
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
		test	al,al
		jne	..@j23518
		jmp	..@j23519
..@j23518:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23522
		jmp	..@j23523
..@j23522:
		jmp	..@j23508
..@j23523:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
..@j23519:
		cmp	byte [bp-256],0
		je	..@j23530
		jmp	..@j23531
..@j23530:
		mov	bx,word [bp+4]
		mov	word [bx],0
		jmp	..@j23534
..@j23531:
		lea	ax,[bp-256]
		push	ax
		lea	ax,[bp-258]
		push	ax
		call	fpc_val_uint_shortstr
		mov	bx,word [bp+4]
		mov	word [bx],ax
		cmp	word [bp-258],0
		jne	..@j23541
		jmp	..@j23542
..@j23541:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j23545
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j23546
..@j23545:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j23546:
		mov	word [bx],106
..@j23542:
..@j23534:
..@j23508:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	fpc_val_uint_shortstr
EXTERN	SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
EXTERN	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
