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

SECTION data class=data
	ALIGN 2
	GLOBAL RTTI_$PORTS_$$_TPORTW
RTTI_$PORTS_$$_TPORTW	DB	15,6
		DB	"tportw"
	DW	VMT_$PORTS_$$_TPORTW,RTTI_$SYSTEM_$$_TOBJECT,0
	DB	5
		DB	"ports"
	DW	0
; End asmlist al_rtti

EXTERN	RTTI_$SYSTEM_$$_TOBJECT
EXTERN	VMT_$PORTS_$$_TPORTW
