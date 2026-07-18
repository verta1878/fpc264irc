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
	GLOBAL TC_$CHARSET$_$INITITEMS$PUNICODECHARMAPPING$LONGINT_$$_INIT_ITEM
TC_$CHARSET$_$INITITEMS$PUNICODECHARMAPPING$LONGINT_$$_INIT_ITEM	DW	0
	DB	3,0
