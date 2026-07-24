BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .data
	ALIGN 2
	GLOBAL INIT_$CLASSES_$$_DEF1329
INIT_$CLASSES_$$_DEF1329	DB	12
		DB	14,"TIdentMapEntry"
	DW	0,0,INIT_$CLASSES_$$_TIDENTMAPENTRY
	DB	1
	DW	RTTI_$SYSTEM_$$_SMALLINT
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
EXTERN	INIT_$CLASSES_$$_TIDENTMAPENTRY
