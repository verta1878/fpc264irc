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
	GLOBAL PRINTER_$$_INITPRINTER$SHORTSTRING
PRINTER_$$_INITPRINTER$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j20
..@j19:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j20:
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j23
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24
..@j23:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24:
		mov	word [bx],0
		mov	ax,word U_$PRINTER_$$_LST
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
		mov	ax,word U_$PRINTER_$$_LST
		push	ax
		call	SYSTEM_$$_REWRITE$TEXT
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j33
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j34
..@j33:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j34:
		cmp	word [bx],0
		mov	al,0
		jne	..@j35
		inc	ax
..@j35:
		mov	byte [U_$PRINTER_$$_LSTAVAILABLE],al
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j38
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j39
..@j38:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j39:
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$PRINTER_$$_LSTAVAILABLE
EXTERN	SYSTEM_$$_REWRITE$TEXT
EXTERN	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
EXTERN	U_$PRINTER_$$_LST
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
