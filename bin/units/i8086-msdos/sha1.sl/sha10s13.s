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
	GLOBAL TC_$SHA1_$$_HEXTBL
TC_$SHA1_$$_HEXTBL	DB	48,49,50,51,52,53,54,55,56,57,97,98,99,100,101,102
; End asmlist al_typedconsts
; Begin asmlist al_rtti
