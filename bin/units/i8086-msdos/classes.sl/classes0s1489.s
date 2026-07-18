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
	GLOBAL RTTI_$CLASSES_$$_TINITCOMPONENTHANDLER
RTTI_$CLASSES_$$_TINITCOMPONENTHANDLER	DB	23,21
		DB	"TInitComponentHandler"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_BOOLEAN
	DB	2,8
	DW	RTTI_$CLASSES_$$_TCOMPONENT
	DB	8
		DB	"Instance"
	DB	0
	DW	RTTI_$SYSTEM_$$_TCLASS
	DB	12
		DB	"RootAncestor"
EXTERN	RTTI_$SYSTEM_$$_TCLASS
EXTERN	RTTI_$CLASSES_$$_TCOMPONENT
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
