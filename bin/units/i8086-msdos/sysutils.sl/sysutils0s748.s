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
	GLOBAL RTTI_$SYSUTILS_$$_TGETTEMPDIREVENT
RTTI_$SYSUTILS_$$_TGETTEMPDIREVENT	DB	23,16
		DB	"TGetTempDirEvent"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	1,0
	DW	RTTI_$SYSTEM_$$_BOOLEAN
	DB	6
		DB	"Global"
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
