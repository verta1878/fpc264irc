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
	GLOBAL SYSTEM$_$STR_REAL$crcEDBAA446_$$_COUNT_LEADING_ZERO$QWORD$$SMALLINT
SYSTEM$_$STR_REAL$crcEDBAA446_$$_COUNT_LEADING_ZERO$QWORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM_$$_BSRQWORD$QWORD$$BYTE
		mov	ah,0
		mov	dx,63
		sub	dx,ax
		mov	word [bp-2],dx
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_BSRQWORD$QWORD$$BYTE
