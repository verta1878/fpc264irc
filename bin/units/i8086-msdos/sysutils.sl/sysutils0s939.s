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
	GLOBAL RTTI_$SYSUTILS_$$_IREADWRITESYNC
RTTI_$SYSUTILS_$$_IREADWRITESYNC	DB	14,14
		DB	"IReadWriteSync"
	DW	RTTI_$SYSTEM_$$_IUNKNOWN
	DB	9
	DD	2064682066
	DW	7567,19675
	DB	156,223,87,224,113,25,61,63,8
		DB	"sysutils"
	DB	38
		DB	"{7B108C52-1D8F-4CDB-9CDF-57E071193D3F}"
EXTERN	RTTI_$SYSTEM_$$_IUNKNOWN
