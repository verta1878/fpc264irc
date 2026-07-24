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
	GLOBAL OBJECTS_$$_LONGDIV$LONGINT$SMALLINT$$SMALLINT
OBJECTS_$$_LONGDIV$LONGINT$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		cwd
		push	dx
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		call	fpc_div_longint
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_div_longint
