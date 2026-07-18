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
	GLOBAL DOS_$$_ENVSTR$LONGINT$$SHORTSTRING
DOS_$$_ENVSTR$LONGINT$$SHORTSTRING:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		mov	ax,word [bp+8]
		push	ax
		call	DOS_$$_GETENVSTR$SMALLINT$SHORTSTRING$$SMALLINT
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	DOS_$$_GETENVSTR$SMALLINT$SHORTSTRING$$SMALLINT
