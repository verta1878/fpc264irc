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
	GLOBAL RTTI_$CLASSES_$$_ISTREAMPERSIST
RTTI_$CLASSES_$$_ISTREAMPERSIST	DB	14,14
		DB	"IStreamPersist"
	DW	RTTI_$SYSTEM_$$_IUNKNOWN
	DB	9
	DD	-1194519901
	DW	9850,4564
	DB	131,218,0,192,79,96,178,221,7
		DB	"Classes"
	DB	38
		DB	"{B8CD12A3-267A-11D4-83DA-00C04F60B2DD}"
EXTERN	RTTI_$SYSTEM_$$_IUNKNOWN
