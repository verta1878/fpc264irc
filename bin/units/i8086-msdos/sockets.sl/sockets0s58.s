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
	GLOBAL RTTI_$SOCKETS_$$_TINETSOCKADDR
RTTI_$SOCKETS_$$_TINETSOCKADDR	DB	13,13
		DB	"TInetSockAddr"
	DD	16,4
	DW	RTTI_$SYSTEM_$$_WORD,0,RTTI_$SYSTEM_$$_WORD,2,RTTI_$SOCKETS_$$_TINADDR
	DW	4,RTTI_$SOCKETS_$$_DEF7,8
EXTERN	RTTI_$SOCKETS_$$_DEF7
EXTERN	RTTI_$SOCKETS_$$_TINADDR
EXTERN	RTTI_$SYSTEM_$$_WORD
