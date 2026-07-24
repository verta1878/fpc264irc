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
	GLOBAL RTTI_$VIDEO_$$_TVIDEOMODE
RTTI_$VIDEO_$$_TVIDEOMODE	DB	13,10
		DB	"TVideoMode"
	DD	5,3
	DW	RTTI_$SYSTEM_$$_WORD,0,RTTI_$SYSTEM_$$_WORD,2,RTTI_$SYSTEM_$$_BOOLEAN
	DW	4
; End asmlist al_rtti

EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
EXTERN	RTTI_$SYSTEM_$$_WORD
