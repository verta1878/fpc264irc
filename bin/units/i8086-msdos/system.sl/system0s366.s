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
	GLOBAL fpc_char_to_ansistr
fpc_char_to_ansistr:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+4]
		mov	ax,word [bp+4]
		sub	ax,1
		jbe	..@j9190
		jmp	..@j9189
..@j9190:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j9188
..@j9189:
..@j9188:
		mov	word [bp+4],dx
		mov	ax,word [bp+8]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		jne	..@j9201
		mov	bx,word FPC_EMPTYCHAR
..@j9201:
		mov	al,byte [bp+6]
		mov	byte [bx],al
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_ansistr_setlength
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
