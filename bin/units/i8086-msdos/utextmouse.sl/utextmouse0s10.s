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
	GLOBAL RTTI_$UTEXTMOUSE_$$_TMOUSEACTION
RTTI_$UTEXTMOUSE_$$_TMOUSEACTION	DB	3,12
		DB	"TMouseAction"
	DB	5
	DD	0,3
	DW	0
	DB	5
		DB	"mNone"
	DB	6
		DB	"mPress"
	DB	8
		DB	"mRelease"
	DB	5
		DB	"mMove"
	DB	10
		DB	"utextmouse"
	DB	0
