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
	GLOBAL fpc_write_text_currency
fpc_write_text_currency:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22594
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22595
..@j22594:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22595:
		cmp	word [bx],0
		jne	..@j22592
		jmp	..@j22593
..@j22592:
		jmp	..@j22590
..@j22593:
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+14]
		push	word [bp+18]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_currency
		push	word [bp+16]
		push	word [bp+14]
		mov	ax,word [bp+12]
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR
..@j22590:
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	FPC_WRITE_TEXT_SHORTSTR
EXTERN	fpc_shortstr_currency
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
