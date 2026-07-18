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
	GLOBAL RTTI_$CLASSES_$$_ISTRINGSADAPTER
RTTI_$CLASSES_$$_ISTRINGSADAPTER	DB	14,15
		DB	"IStringsAdapter"
	DW	RTTI_$SYSTEM_$$_IUNKNOWN
	DB	9
	DD	1939615540
	DW	21228,4560
	DB	158,166,0,32,175,61,130,218,7
		DB	"Classes"
	DB	38
		DB	"{739C2F34-52EC-11D0-9EA6-0020AF3D82DA}"
EXTERN	RTTI_$SYSTEM_$$_IUNKNOWN
