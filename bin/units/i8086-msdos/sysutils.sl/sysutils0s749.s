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
	GLOBAL RTTI_$SYSUTILS_$$_TGETTEMPFILEEVENT
RTTI_$SYSUTILS_$$_TGETTEMPFILEEVENT	DB	23,17
		DB	"TGetTempFileEvent"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	2,2
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	3
		DB	"Dir"
	DB	2
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	6
		DB	"Prefix"
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
