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
	GLOBAL _$SYSTEM$_Ld33
_$SYSTEM$_Ld33:
		DB	"jRecompile the application with a thread-driver in the program u"
		DB	"ses clause before other units using thread.",0
