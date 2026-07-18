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
	DW	0,1,-1,4
	GLOBAL _$MATH$_Ld29
_$MATH$_Ld29:
		DB	"MATH",0

SECTION .rodata
	ALIGN 2
	DW	0,1,-1,15
	GLOBAL _$MATH$_Ld30
_$MATH$_Ld30:
		DB	"Math Error : %s",0
	ALIGN 2
	DW	0,1,-1,15
	GLOBAL _$MATH$_Ld31
_$MATH$_Ld31:
		DB	"math.smatherror",0

SECTION .rodata
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$MATH$_Ld32
_$MATH$_Ld32:
		DB	"Invalid argument",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$MATH$_Ld33
_$MATH$_Ld33:
		DB	"math.sinvalidargument",0
; End asmlist al_const
; Begin asmlist al_typedconsts
