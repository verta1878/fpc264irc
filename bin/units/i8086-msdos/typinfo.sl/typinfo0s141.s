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
	ALIGN 2
	GLOBAL RTTI_$TYPINFO_$$_TINTFFLAG
RTTI_$TYPINFO_$$_TINTFFLAG	DB	3,9
		DB	"TIntfFlag"
	DB	1
	DD	0,3
	DW	0
	DB	9
		DB	"ifHasGuid"
	DB	15
		DB	"ifDispInterface"
	DB	10
		DB	"ifDispatch"
	DB	12
		DB	"ifHasStrGUID"
	DB	7
		DB	"typinfo"
	DB	0
