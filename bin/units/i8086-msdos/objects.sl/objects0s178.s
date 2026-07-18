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
	GLOBAL RTTI_$OBJECTS_$$_ASCIIZ
RTTI_$OBJECTS_$$_ASCIIZ	DB	12
		DB	6,"AsciiZ"
	DW	256,256,RTTI_$SYSTEM_$$_CHAR
	DB	1
	DW	RTTI_$SYSTEM_$$_BYTE
EXTERN	RTTI_$SYSTEM_$$_BYTE
EXTERN	RTTI_$SYSTEM_$$_CHAR
