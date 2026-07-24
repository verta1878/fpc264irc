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
	DW	65535,1,-1,10
	GLOBAL _$CLASSES$_Ld8
_$CLASSES$_Ld8:
		DB	"WideString",0

SECTION .data
	ALIGN 2
	GLOBAL _$CLASSES$_Ld37
_$CLASSES$_Ld37:
		DB	"TPF0",0

SECTION .data
	ALIGN 2
	GLOBAL _$CLASSES$_Ld63
_$CLASSES$_Ld63:
		DB	"TPF0",0
; End asmlist al_const
; Begin asmlist al_typedconsts
