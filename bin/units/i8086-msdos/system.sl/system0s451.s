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
	GLOBAL fpc_pchar_to_unicodestr
fpc_pchar_to_unicodestr:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		je	..@j11407
		jmp	..@j11409
..@j11409:
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		je	..@j11407
		jmp	..@j11408
..@j11407:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		jmp	..@j11405
..@j11408:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_INDEXCHAR$formal$SMALLINT$CHAR$$SMALLINT
		mov	word [bp-2],ax
		push	word [bp+4]
		push	word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+40]
		call	ax
..@j11405:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_INDEXCHAR$formal$SMALLINT$CHAR$$SMALLINT
EXTERN	fpc_unicodestr_assign
