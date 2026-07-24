BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READFLOAT$$EXTENDED
CLASSES$_$TBINARYOBJECTREADER_$__$$_READFLOAT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_READEXTENDED$$EXTENDED
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$__$$_READEXTENDED$$EXTENDED
