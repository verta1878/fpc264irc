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
	GLOBAL RTTI_$TYPINFO_$$_TTYPEINFO
RTTI_$TYPINFO_$$_TTYPEINFO	DB	13,9
		DB	"TTypeInfo"
	DD	257,2
	DW	RTTI_$TYPINFO_$$_TTYPEKIND,0,RTTI_$SYSTEM_$$_SHORTSTRING,1
EXTERN	RTTI_$SYSTEM_$$_SHORTSTRING
EXTERN	RTTI_$TYPINFO_$$_TTYPEKIND
