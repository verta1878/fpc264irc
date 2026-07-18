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
	GLOBAL TYPES$_$TRECT_$__$$_INFLATE$LONGINT$LONGINT
TYPES$_$TRECT_$__$$_INFLATE$LONGINT$LONGINT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+8]
		push	word [bp+4]
		call	TYPES_$$_INFLATERECT$TRECT$SMALLINT$SMALLINT$$BOOLEAN
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	TYPES_$$_INFLATERECT$TRECT$SMALLINT$SMALLINT$$BOOLEAN
