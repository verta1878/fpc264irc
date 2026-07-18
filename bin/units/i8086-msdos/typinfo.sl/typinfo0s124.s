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
	GLOBAL _$TYPINFO$_Ld12
_$TYPINFO$_Ld12:
		DB	0,0,0,0,0,0,64,156,12,64
; End asmlist al_typedconsts
; Begin asmlist al_rtti
