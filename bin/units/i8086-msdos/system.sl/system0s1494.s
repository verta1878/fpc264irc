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

SECTION rodata class=data
	ALIGN 2
	GLOBAL _$SYSTEM$_Ld43
_$SYSTEM$_Ld43:
		DB	3,"*.*",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti
