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
	GLOBAL INIT$_$CHARSET
INIT$_$CHARSET:
	GLOBAL _CHARSET_$$_init$
_CHARSET_$$_init$:
		push	bp
		mov	bp,sp
		mov	word [U_$CHARSET_$$_MAPPINGS],0
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$CHARSET_$$_MAPPINGS
