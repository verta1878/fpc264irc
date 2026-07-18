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
	GLOBAL RTTI_$TYPES_$$_TENDIAN
RTTI_$TYPES_$$_TENDIAN	DB	3,7
		DB	"TEndian"
	DB	5
	DD	0,1
	DW	0
	DB	3
		DB	"Big"
	DB	6
		DB	"Little"
	DB	5
		DB	"Types"
	DB	0
