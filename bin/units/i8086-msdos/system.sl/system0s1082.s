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
	GLOBAL fpc_write_text_float
fpc_write_text_float:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22505
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22506
..@j22505:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22506:
		cmp	word [bx],0
		jne	..@j22503
		jmp	..@j22504
..@j22503:
		jmp	..@j22501
..@j22504:
		push	word [bp+16]
		push	word [bp+20]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+26]
		push	word [bp+24]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_STR_REAL$SMALLINT$SMALLINT$EXTENDED$TREAL_TYPE$OPENSTRING
		push	word [bp+18]
		push	word [bp+16]
		mov	ax,word [bp+14]
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR
..@j22501:
		mov	sp,bp
		pop	bp
		ret	24
EXTERN	FPC_WRITE_TEXT_SHORTSTR
EXTERN	SYSTEM_$$_STR_REAL$SMALLINT$SMALLINT$EXTENDED$TREAL_TYPE$OPENSTRING
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
