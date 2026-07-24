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
	GLOBAL fpc_setstring_ansistr_pansichar
fpc_setstring_ansistr_pansichar:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+10]
		mov	word [bx],0
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		cmp	word [bp+8],0
		jne	..@j10564
		jmp	..@j10565
..@j10564:
		mov	ax,word [bp+10]
		mov	word [bp-2],ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		push	ax
		push	word [bp+6]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j10565:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	fpc_ansistr_setlength
