BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .data
	ALIGN 2
	GLOBAL RTTI_$CLASSES_$$_TSHIFTSTATEENUM
RTTI_$CLASSES_$$_TSHIFTSTATEENUM	DB	3,15
		DB	"TShiftStateEnum"
	DB	5
	DD	0,17
	DW	0
	DB	7
		DB	"ssShift"
	DB	5
		DB	"ssAlt"
	DB	6
		DB	"ssCtrl"
	DB	6
		DB	"ssLeft"
	DB	7
		DB	"ssRight"
	DB	8
		DB	"ssMiddle"
	DB	8
		DB	"ssDouble"
	DB	6
		DB	"ssMeta"
	DB	7
		DB	"ssSuper"
	DB	7
		DB	"ssHyper"
	DB	7
		DB	"ssAltGr"
	DB	6
		DB	"ssCaps"
	DB	5
		DB	"ssNum"
	DB	8
		DB	"ssScroll"
	DB	8
		DB	"ssTriple"
	DB	6
		DB	"ssQuad"
	DB	8
		DB	"ssExtra1"
	DB	8
		DB	"ssExtra2"
	DB	7
		DB	"Classes"
	DB	0
