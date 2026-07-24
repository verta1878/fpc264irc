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
	GLOBAL SYSTEM_$$_FPC_PCHAR_PCHAR_INTERN_CHARMOVE$PCHAR$SMALLINT$PCHAR$SMALLINT$SMALLINT
SYSTEM_$$_FPC_PCHAR_PCHAR_INTERN_CHARMOVE$PCHAR$SMALLINT$PCHAR$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+12]
		mov	si,word [bp+10]
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+8]
		mov	si,word [bp+6]
		lea	ax,[bx+si]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
