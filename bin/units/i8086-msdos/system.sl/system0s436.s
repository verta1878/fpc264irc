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
	GLOBAL fpc_ansistr_to_unicodestr
fpc_ansistr_to_unicodestr:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j10985
		mov	bx,word [bx-2]
..@j10985:
		mov	word [bp-2],bx
		cmp	word [bp-2],0
		jg	..@j10986
		jmp	..@j10987
..@j10986:
		push	word [bp+4]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-6],ax
		mov	dx,word [bp-6]
		mov	ax,word [bp-6]
		sub	ax,1
		jbe	..@j10999
		jmp	..@j10998
..@j10999:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j10997
..@j10998:
..@j10997:
		mov	word [bp-4],dx
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j11004
		mov	ax,word FPC_EMPTYCHAR
..@j11004:
		push	ax
		push	word [bp-4]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+40]
		call	ax
..@j10987:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	FPC_EMPTYCHAR
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	fpc_unicodestr_assign
