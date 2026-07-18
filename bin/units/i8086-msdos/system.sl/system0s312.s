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
	GLOBAL fpc_shortstr_float
fpc_shortstr_float:
	GLOBAL FPC_SHORTSTR_FLOAT
FPC_SHORTSTR_FLOAT:
		push	bp
		mov	bp,sp
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+22]
		push	word [bp+20]
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		mov	ax,word [bp+8]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_STR_REAL$SMALLINT$SMALLINT$EXTENDED$TREAL_TYPE$OPENSTRING
		mov	sp,bp
		pop	bp
		ret	20
EXTERN	SYSTEM_$$_STR_REAL$SMALLINT$SMALLINT$EXTENDED$TREAL_TYPE$OPENSTRING
