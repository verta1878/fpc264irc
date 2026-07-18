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
	GLOBAL fpc_write_text_enum
fpc_write_text_enum:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j22551
		cmp	dx,-10318
		jne	..@j22551
		jmp	..@j22552
..@j22551:
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j22554
		cmp	dx,-10319
		jne	..@j22554
		jmp	..@j22553
..@j22553:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22557
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22558
..@j22557:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22558:
		mov	word [bx],105
		jmp	..@j22559
..@j22554:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22562
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22563
..@j22562:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22563:
		mov	word [bx],103
..@j22559:
		jmp	..@j22549
..@j22552:
		push	word [bp+4]
		push	word [bp+10]
		push	word [bp+14]
		push	word [bp+12]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_FPC_SHORTSTR_ENUM_INTERN$SMALLINT$SMALLINT$POINTER$POINTER$OPENSTRING$$LONGINT
		mov	word [bp-258],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22578
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22579
..@j22578:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22579:
		mov	ax,word [bp-258]
		mov	word [bx],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22582
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22583
..@j22582:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22583:
		cmp	word [bx],0
		jne	..@j22580
		jmp	..@j22581
..@j22580:
		jmp	..@j22549
..@j22581:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-255]
		push	ax
		mov	al,byte [bp-256]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
..@j22549:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
EXTERN	SYSTEM_$$_FPC_SHORTSTR_ENUM_INTERN$SMALLINT$SMALLINT$POINTER$POINTER$OPENSTRING$$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
