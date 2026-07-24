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
	GLOBAL TC_$SYSTEM$_$STR_REAL$crcEDBAA446_GEN_DIGITS_32$crc66C340FE_$$_DIGITS
TC_$SYSTEM$_$STR_REAL$crcEDBAA446_GEN_DIGITS_32$crc66C340FE_$$_DIGITS	DD	0,10,100,1000,10000,100000,1000000,10000000,100000000,1000000000
