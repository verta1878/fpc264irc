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

SECTION data class=data
	ALIGN 2
	GLOBAL THREADVARLIST_$CHARSET
THREADVARLIST_$CHARSET	DW	U_$CHARSET_$$_STRMAPCACHE
	DD	256
	DW	U_$CHARSET_$$_STRMAPCACHEP
	DD	2
	DW	U_$CHARSET_$$_INTMAPCACHE
	DD	2
	DW	U_$CHARSET_$$_INTMAPCACHEP
	DD	2
	DW	0
; End asmlist al_globals
; Begin asmlist al_typedconsts
EXTERN	U_$CHARSET_$$_INTMAPCACHEP
EXTERN	U_$CHARSET_$$_INTMAPCACHE
EXTERN	U_$CHARSET_$$_STRMAPCACHEP
EXTERN	U_$CHARSET_$$_STRMAPCACHE
