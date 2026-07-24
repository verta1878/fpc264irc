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
	GLOBAL INIT_$SYSUTILS_$$_INT64REC
INIT_$SYSUTILS_$$_INT64REC	DB	13,8
		DB	"Int64Rec"
	DD	8,0
