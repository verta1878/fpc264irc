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
	GLOBAL RTTI_$CTYPES_$$_PCULONGLONG
RTTI_$CTYPES_$$_PCULONGLONG	DB	29,11
		DB	"pculonglong"
	DW	RTTI_$SYSTEM_$$_QWORD
EXTERN	RTTI_$SYSTEM_$$_QWORD
