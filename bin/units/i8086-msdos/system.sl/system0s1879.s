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
	GLOBAL INIT_$SYSTEM_$$_THEAPSTATUS
INIT_$SYSTEM_$$_THEAPSTATUS	DB	13,11
		DB	"THeapStatus"
	DD	40,0
