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
	GLOBAL SYSUTILS_$$_FLOATTODECIMAL$TFLOATREC$EXTENDED$SMALLINT$SMALLINT
SYSUTILS_$$_FLOATTODECIMAL$TFLOATREC$EXTENDED$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+18]
		push	ax
		lea	ax,[bp+8]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	SYSUTILS_$$_FLOATTODECIMAL$TFLOATREC$formal$TFLOATVALUE$SMALLINT$SMALLINT
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	SYSUTILS_$$_FLOATTODECIMAL$TFLOATREC$formal$TFLOATVALUE$SMALLINT$SMALLINT
