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
	GLOBAL RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON
RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON	DB	3,12
		DB	"TMouseButton"
	DB	5
	DD	0,5
	DW	0
	DB	6
		DB	"mbLeft"
	DB	8
		DB	"mbMiddle"
	DB	7
		DB	"mbRight"
	DB	9
		DB	"mbWheelUp"
	DB	11
		DB	"mbWheelDown"
	DB	6
		DB	"mbNone"
	DB	10
		DB	"utextmouse"
	DB	0
