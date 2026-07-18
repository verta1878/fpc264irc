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
	GLOBAL RTTI_$SYSTEM_$$_TSEMAPHOREPOSTHANDLER
RTTI_$SYSTEM_$$_TSEMAPHOREPOSTHANDLER	DB	23,21
		DB	"TSemaphorePostHandler"
	DB	0,2
	DW	0
	DB	1,2
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	3
		DB	"sem"
EXTERN	RTTI_$SYSTEM_$$_POINTER
