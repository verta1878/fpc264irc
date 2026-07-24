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
	GLOBAL SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_COUNT_LEADING_ZERO$LONGWORD$$SMALLINT
SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_COUNT_LEADING_ZERO$LONGWORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM_$$_BSRDWORD$LONGWORD$$BYTE
		mov	ah,0
		mov	dx,31
		sub	dx,ax
		mov	word [bp-2],dx
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_BSRDWORD$LONGWORD$$BYTE
