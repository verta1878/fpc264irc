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
	GLOBAL TC_$SYSTEM_$$_RUNTIMEERROREXITCODES
TC_$SYSTEM_$$_RUNTIMEERROREXITCODES	DB	0,203,204,200,201,215,207,200,205,206,219,216,218,217,202,220,221,222,223,224,225,227,212
	DB	228,229,233,234
