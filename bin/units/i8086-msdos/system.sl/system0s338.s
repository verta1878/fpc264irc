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
	GLOBAL fpc_val_real_shortstr
fpc_val_real_shortstr:
	GLOBAL FPC_VAL_REAL_SHORTSTR
FPC_VAL_REAL_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED
