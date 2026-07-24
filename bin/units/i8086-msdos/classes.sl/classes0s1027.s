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

SECTION .rodata
	ALIGN 2
	GLOBAL IIDSTR_$CLASSES_$$_IFPOBSERVER
IIDSTR_$CLASSES_$$_IFPOBSERVER	DB	38
		DB	"{BC7376EA-199C-4C2A-8684-F4805F0691CA}"
