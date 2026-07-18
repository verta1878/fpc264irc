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
	GLOBAL _$STRUTILS$_Ld23
_$STRUTILS$_Ld23:
		DB	16,"0123456789ABCDEF",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti
