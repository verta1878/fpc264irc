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
	GLOBAL SYSTEM_$$_assign$SINGLE$$VARIANT
SYSTEM_$$_assign$SINGLE$$VARIANT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		push	ax
		wait fld	dword [bp+4]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+34]
		call	ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
