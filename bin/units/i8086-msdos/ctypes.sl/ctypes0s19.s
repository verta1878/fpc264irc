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
	GLOBAL RTTI_$CTYPES_$$_PCBOOL
RTTI_$CTYPES_$$_PCBOOL	DB	29,6
		DB	"pcbool"
	DW	RTTI_$SYSTEM_$$_LONGBOOL
EXTERN	RTTI_$SYSTEM_$$_LONGBOOL
