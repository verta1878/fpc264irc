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
	DW	65535,1,-1,31
	GLOBAL _$SYSUTILS$_Ld660
_$SYSUTILS$_Ld660:
		DB	34,"%s",34," is not a valid date format",0
