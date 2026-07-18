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
	GLOBAL RTTI_$SYSTEM_$$___vtbl_ptr_type
RTTI_$SYSTEM_$$___vtbl_ptr_type	DB	13,16
		DB	"$__vtbl_ptr_type"
	DD	10,5
	DW	RTTI_$SYSTEM_$$_SMALLINT,0,RTTI_$SYSTEM_$$_SMALLINT,2,RTTI_$SYSTEM_$$_pvmt
	DW	4,RTTI_$SYSTEM_$$_DEF61,6,RTTI_$SYSTEM_$$_DEF62,8
EXTERN	RTTI_$SYSTEM_$$_DEF62
EXTERN	RTTI_$SYSTEM_$$_DEF61
EXTERN	RTTI_$SYSTEM_$$_pvmt
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
