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
	GLOBAL TC_$VARUTILS_$$_PSAELEMENTSIZES
TC_$VARUTILS_$$_PSAELEMENTSIZES	DB	0,0,2,2,4,8,8,8,2,2,4,1,16,2,0,0,1,1,2,4,8,8
; End asmlist al_typedconsts
; Begin asmlist al_rtti
