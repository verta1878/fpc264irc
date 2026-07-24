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

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$STRUTILS$_Ld24
_$STRUTILS$_Ld24:
		DB	"STRUTILS",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,48
	GLOBAL _$STRUTILS$_Ld25
_$STRUTILS$_Ld25:
		DB	"Amount of search and replace strings don't match",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$STRUTILS$_Ld26
_$STRUTILS$_Ld26:
		DB	"strutils.serramountstrings",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$STRUTILS$_Ld27
_$STRUTILS$_Ld27:
		DB	"%s is not a valid Roman numeral",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$STRUTILS$_Ld28
_$STRUTILS$_Ld28:
		DB	"strutils.sinvalidromannumeral",0
; End asmlist al_const
; Begin asmlist al_typedconsts
