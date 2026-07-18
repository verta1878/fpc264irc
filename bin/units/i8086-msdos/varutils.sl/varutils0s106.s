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
	GLOBAL _$VARUTILS$_Ld8
_$VARUTILS$_Ld8:
		DB	0,0,0,0,0,136,195,64

SECTION rodata class=data
	ALIGN 2
	GLOBAL _$VARUTILS$_Ld9
_$VARUTILS$_Ld9:
	DD	1602224128

SECTION rodata class=data
	ALIGN 2
	GLOBAL _$VARUTILS$_Ld10
_$VARUTILS$_Ld10:
	DD	1602224128

SECTION rodata class=data
	ALIGN 2
	GLOBAL _$VARUTILS$_Ld11
_$VARUTILS$_Ld11:
	DD	1602224128

SECTION rodata class=data
	ALIGN 2
	GLOBAL _$VARUTILS$_Ld12
_$VARUTILS$_Ld12:
	DD	1602224128
