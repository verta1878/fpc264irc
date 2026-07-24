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
	GLOBAL RTTI_$FGL_$$_TFPSMAP
RTTI_$FGL_$$_TFPSMAP	DB	15,7
		DB	"TFPSMap"
	DW	VMT_$FGL_$$_TFPSMAP,RTTI_$FGL_$$_TFPSLIST,0
	DB	3
		DB	"fgl"
	DW	0
EXTERN	RTTI_$FGL_$$_TFPSLIST
EXTERN	VMT_$FGL_$$_TFPSMAP
