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
	GLOBAL INIT$_$STDCONVS
INIT$_$STDCONVS:
	GLOBAL _STDCONVS_$$_init$
_STDCONVS_$$_init$:
		push	bp
		mov	bp,sp
		call	STDCONVS_$$_REGISTERALL
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	STDCONVS_$$_REGISTERALL
