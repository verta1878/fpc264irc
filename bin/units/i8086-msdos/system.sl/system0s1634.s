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
	GLOBAL INIT_$SYSTEM_$$_TRTLCRITICALSECTION
INIT_$SYSTEM_$$_TRTLCRITICALSECTION	DB	13,19
		DB	"TRTLCriticalSection"
	DD	1,0
