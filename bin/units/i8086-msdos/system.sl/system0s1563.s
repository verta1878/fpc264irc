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
	GLOBAL RTTI_$SYSTEM_$$_nestedprocpointer
RTTI_$SYSTEM_$$_nestedprocpointer	DB	13,18
		DB	"$nestedprocpointer"
	DD	4,2
	DW	RTTI_$SYSTEM_$$_NEARPOINTER,0,RTTI_$SYSTEM_$$_parentfp_void_pointer
	DW	2
EXTERN	RTTI_$SYSTEM_$$_parentfp_void_pointer
EXTERN	RTTI_$SYSTEM_$$_NEARPOINTER
