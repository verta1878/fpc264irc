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
	GLOBAL fpc_setstring_unicodestr_pansichar
fpc_setstring_unicodestr_pansichar:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	word [bx],0
		cmp	word [bp+6],0
		jne	..@j12438
		jmp	..@j12437
..@j12438:
		cmp	word [bp+4],0
		jg	..@j12436
		jmp	..@j12437
..@j12436:
		push	word [bp+6]
		push	word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+40]
		call	ax
		jmp	..@j12447
..@j12437:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		call	fpc_unicodestr_setlength
..@j12447:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_unicodestr_setlength
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
