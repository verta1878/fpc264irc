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
	GLOBAL _$VARUTILS$_Ld1
_$VARUTILS$_Ld1:
		DB	16,39,0,0,0,0,0,0

SECTION rodata class=data
	ALIGN 2
	GLOBAL _$VARUTILS$_Ld2
_$VARUTILS$_Ld2:
	DD	1602224128

SECTION rodata class=data
	ALIGN 2
	GLOBAL _$VARUTILS$_Ld3
_$VARUTILS$_Ld3:
	DD	1602224128

SECTION rodata class=data
	ALIGN 2
	GLOBAL _$VARUTILS$_Ld4
_$VARUTILS$_Ld4:
	DD	1602224128

SECTION rodata class=data
	ALIGN 2
	GLOBAL _$VARUTILS$_Ld5
_$VARUTILS$_Ld5:
	DD	1602224128
