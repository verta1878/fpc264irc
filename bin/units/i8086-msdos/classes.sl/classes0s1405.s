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
	GLOBAL RTTI_$CLASSES_$$_TCREATECOMPONENTEVENT
RTTI_$CLASSES_$$_TCREATECOMPONENTEVENT	DB	6,21
		DB	"TCreateComponentEvent"
	DB	0,3,8,6
		DB	"Reader"
		DB	7,"TReader"
	DB	0,14
		DB	"ComponentClass"
		DB	15,"TComponentClass"
	DB	9,9
		DB	"Component"
		DB	10,"TComponent"
	DB	2
	DW	RTTI_$CLASSES_$$_TREADER,RTTI_$CLASSES_$$_TCOMPONENTCLASS,RTTI_$CLASSES_$$_TCOMPONENT
EXTERN	RTTI_$CLASSES_$$_TCOMPONENT
EXTERN	RTTI_$CLASSES_$$_TCOMPONENTCLASS
EXTERN	RTTI_$CLASSES_$$_TREADER
