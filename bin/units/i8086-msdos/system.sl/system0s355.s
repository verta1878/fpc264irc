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
	GLOBAL SYSTEM_$$_FPC_SHORTSTR_ANSISTR_INTERN_CHARMOVE$SHORTSTRING$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
SYSTEM_$$_FPC_SHORTSTR_ANSISTR_INTERN_CHARMOVE$SHORTSTRING$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+12]
		mov	al,byte [bp+10]
		mov	byte [bp-2],al
		mov	byte [bp-1],0
		mov	si,word [bp-2]
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	si,word [bp+6]
		lea	ax,[bx+si]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
