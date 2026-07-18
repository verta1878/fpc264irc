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
	GLOBAL RTTI_$SYSUTILS_$$_DEF177_o2s
RTTI_$SYSUTILS_$$_DEF177_o2s	DD	0
	DW	RTTI_$SYSUTILS_$$_DEF177+13,RTTI_$SYSUTILS_$$_DEF177+26
EXTERN	RTTI_$SYSUTILS_$$_DEF177
