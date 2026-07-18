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
	GLOBAL RTTI_$CTYPES_$$_PCLONGDOUBLE
RTTI_$CTYPES_$$_PCLONGDOUBLE	DB	29,12
		DB	"Pclongdouble"
	DW	RTTI_$SYSTEM_$$_CEXTENDED
; End asmlist al_rtti

EXTERN	RTTI_$SYSTEM_$$_CEXTENDED
