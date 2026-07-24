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
	GLOBAL SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j10547
		mov	bx,word [bx-2]
..@j10547:
		push	bx
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	fpc_ansistr_setlength
