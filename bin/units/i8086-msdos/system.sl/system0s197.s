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
	GLOBAL fpc_abs_real
fpc_abs_real:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,207
		push	ax
		call	SYSTEM_$$_RUNERROR$WORD
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_RUNERROR$WORD
