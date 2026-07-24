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
	GLOBAL SYSTEM$_$STR_REAL$crcEDBAA446_$$_DO_FILLCHAR$OPENSTRING$SMALLINT$SMALLINT$CHAR
SYSTEM$_$STR_REAL$crcEDBAA446_$$_DO_FILLCHAR$OPENSTRING$SMALLINT$SMALLINT$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+12]
		mov	al,byte [bp+8]
		mov	byte [bp-2],al
		mov	byte [bp-1],0
		mov	si,word [bp-2]
		lea	ax,[bx+si]
		push	ax
		push	word [bp+6]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
