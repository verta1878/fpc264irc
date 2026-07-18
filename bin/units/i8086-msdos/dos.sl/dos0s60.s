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
	GLOBAL THREADVARLIST_$DOS
THREADVARLIST_$DOS	DW	U_$DOS_$$_DOSERROR
	DD	2
	DW	U_$DOS_$$_LASTDOSEXITCODE
	DD	4
	DW	0
; End asmlist al_globals
; Begin asmlist al_typedconsts
EXTERN	U_$DOS_$$_LASTDOSEXITCODE
EXTERN	U_$DOS_$$_DOSERROR
