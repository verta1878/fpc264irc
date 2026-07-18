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
	GLOBAL fpc_read_text_sint
fpc_read_text_sint:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23446
		jmp	..@j23447
..@j23446:
		jmp	..@j23442
..@j23447:
		mov	byte [bp-256],0
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
		test	al,al
		jne	..@j23452
		jmp	..@j23453
..@j23452:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23456
		jmp	..@j23457
..@j23456:
		jmp	..@j23442
..@j23457:
		cmp	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],0
		jne	..@j23460
		jmp	..@j23459
..@j23460:
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		cmp	byte [bx+si],26
		je	..@j23458
		jmp	..@j23459
..@j23458:
		jmp	..@j23442
..@j23459:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
..@j23453:
		cmp	byte [bp-256],0
		je	..@j23467
		jmp	..@j23468
..@j23467:
		mov	bx,word [bp+4]
		mov	word [bx],0
		jmp	..@j23471
..@j23468:
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
		jne	..@j23480
		jmp	..@j23481
..@j23480:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j23484
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j23485
..@j23484:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j23485:
		mov	word [bx],106
..@j23481:
..@j23471:
..@j23442:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	fpc_val_sint_shortstr
EXTERN	SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
EXTERN	TC_$SYSTEM_$$_CTRLZMARKSEOF
EXTERN	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
