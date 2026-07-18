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
	GLOBAL SYSTEM_$$_FPC_SHORTSTR_SHORTSTR_INTERN_CHARMOVE$SHORTSTRING$BYTE$OPENSTRING$BYTE$BYTE
SYSTEM_$$_FPC_SHORTSTR_SHORTSTR_INTERN_CHARMOVE$SHORTSTRING$BYTE$OPENSTRING$BYTE$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+14]
		mov	al,byte [bp+12]
		mov	byte [bp-4],al
		mov	byte [bp-3],0
		mov	si,word [bp-4]
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+10]
		mov	al,byte [bp+6]
		mov	byte [bp-2],al
		mov	byte [bp-1],0
		mov	si,word [bp-2]
		lea	ax,[bx+si]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
