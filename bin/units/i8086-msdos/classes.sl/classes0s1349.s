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
	GLOBAL RTTI_$CLASSES_$$_TSTRINGSSORTSTYLE
RTTI_$CLASSES_$$_TSTRINGSSORTSTYLE	DB	3,17
		DB	"TStringsSortStyle"
	DB	5
	DD	0,2
	DW	0
	DB	7
		DB	"sslNone"
	DB	7
		DB	"sslUser"
	DB	7
		DB	"sslAuto"
	DB	7
		DB	"Classes"
	DB	0
