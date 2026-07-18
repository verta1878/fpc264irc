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
	GLOBAL fpc_chararray_to_unicodestr
fpc_chararray_to_unicodestr:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	byte [bp+4],0
		jne	..@j11432
		jmp	..@j11433
..@j11432:
		mov	bx,word [bp+8]
		cmp	byte [bx],0
		je	..@j11434
		jmp	..@j11435
..@j11434:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		jmp	..@j11430
..@j11435:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_INDEXCHAR$formal$SMALLINT$CHAR$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],-1
		je	..@j11448
		jmp	..@j11449
..@j11448:
		mov	ax,word [bp+6]
		inc	ax
		mov	word [bp-2],ax
..@j11449:
		jmp	..@j11452
..@j11433:
		mov	ax,word [bp+6]
		inc	ax
		mov	word [bp-2],ax
..@j11452:
		mov	ax,word [bp+8]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-2]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+40]
		call	ax
..@j11430:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_INDEXCHAR$formal$SMALLINT$CHAR$$SMALLINT
EXTERN	fpc_unicodestr_assign
