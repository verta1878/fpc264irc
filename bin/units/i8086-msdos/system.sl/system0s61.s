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
	GLOBAL SYSTEM_$$_FPC_SHORTSTR_CHARARRAY_INTERN_CHARMOVE$SHORTSTRING$array_of_CHAR$SMALLINT
SYSTEM_$$_FPC_SHORTSTR_CHARARRAY_INTERN_CHARMOVE$SHORTSTRING$array_of_CHAR$SMALLINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+10]
		lea	ax,[bx+1]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
