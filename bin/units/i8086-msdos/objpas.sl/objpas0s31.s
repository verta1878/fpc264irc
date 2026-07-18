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
	GLOBAL RTTI_$OBJPAS_$$_TBOUNDARRAY
RTTI_$OBJPAS_$$_TBOUNDARRAY	DB	21
		DB	11,"TBoundArray"
	DW	2,RTTI_$SYSTEM_$$_SMALLINT
	DD	2
	DW	0
	DB	6
		DB	"objpas"
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
