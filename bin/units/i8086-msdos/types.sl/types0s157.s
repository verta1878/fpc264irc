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
	GLOBAL RTTI_$TYPES_$$_TSPLITRECTTYPE
RTTI_$TYPES_$$_TSPLITRECTTYPE	DB	3,14
		DB	"TSplitRectType"
	DB	5
	DD	0,3
	DW	0
	DB	6
		DB	"srLeft"
	DB	7
		DB	"srRight"
	DB	5
		DB	"srTop"
	DB	8
		DB	"srBottom"
	DB	5
		DB	"Types"
	DB	0
