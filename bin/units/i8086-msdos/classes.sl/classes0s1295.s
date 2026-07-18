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
	GLOBAL RTTI_$CLASSES$_$TFPLIST_$__$$_TDIRECTION_o2s
RTTI_$CLASSES$_$TFPLIST_$__$$_TDIRECTION_o2s	DD	0
	DW	RTTI_$CLASSES$_$TFPLIST_$__$$_TDIRECTION+23,RTTI_$CLASSES$_$TFPLIST_$__$$_TDIRECTION+37
EXTERN	RTTI_$CLASSES$_$TFPLIST_$__$$_TDIRECTION
