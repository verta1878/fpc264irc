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
	DW	65535,1,-1,1
	GLOBAL _$SYSUTILS$_Ld659
_$SYSUTILS$_Ld659:
		DB	"f",0
; End asmlist al_const
; Begin asmlist al_typedconsts
