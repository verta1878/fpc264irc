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
	GLOBAL RTTI_$FGL_$$_TFPSLISTCOMPAREFUNC
RTTI_$FGL_$$_TFPSLISTCOMPAREFUNC	DB	6,19
		DB	"TFPSListCompareFunc"
	DB	1,2,0,4
		DB	"Key1"
		DB	7,"Pointer"
	DB	0,4
		DB	"Key2"
		DB	7,"Pointer"
		DB	8,"SmallInt"
	DW	RTTI_$SYSTEM_$$_SMALLINT
	DB	2
	DW	RTTI_$SYSTEM_$$_POINTER,RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
