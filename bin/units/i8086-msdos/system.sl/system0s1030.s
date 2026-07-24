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
	GLOBAL SYSTEM_$$_RESET$TEXT
SYSTEM_$$_RESET$TEXT:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21157
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21158
..@j21157:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21158:
		cmp	word [bx],0
		jne	..@j21155
		jmp	..@j21156
..@j21155:
		jmp	..@j21153
..@j21156:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,-10319
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_OPENTEXT$TEXT$LONGINT$LONGINT
..@j21153:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_OPENTEXT$TEXT$LONGINT$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
