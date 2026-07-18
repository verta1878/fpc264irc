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
	DW	65535,1,-1,39
	GLOBAL _$TYPINFO$_Ld10
_$TYPINFO$_Ld10:
		DB	"Cannot set interface from RAW interface",0
