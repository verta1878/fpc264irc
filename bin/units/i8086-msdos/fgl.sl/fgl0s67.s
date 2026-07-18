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
	GLOBAL RTTI_$FGL_$$_ELISTERROR
RTTI_$FGL_$$_ELISTERROR	DB	15,10
		DB	"EListError"
	DW	VMT_$FGL_$$_ELISTERROR,RTTI_$SYSUTILS_$$_EXCEPTION,0
	DB	3
		DB	"fgl"
	DW	0
EXTERN	RTTI_$SYSUTILS_$$_EXCEPTION
EXTERN	VMT_$FGL_$$_ELISTERROR
