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
	GLOBAL _$SYSUTILS$_Ld624
_$SYSUTILS$_Ld624:
	DB	0,0,0,0,0,0,0,0,254,255,255,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
