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

SECTION text
	ALIGN 2
	GLOBAL INIT$_$SYSUTILS
INIT$_$SYSUTILS:
	GLOBAL _SYSUTILS_$$_init$
_SYSUTILS_$$_init$:
		push	bp
		mov	bp,sp
		call	SYSUTILS_$$_INITEXCEPTIONS
		call	SYSUTILS_$$_INITINTERNATIONAL
		mov	ax,word SYSUTILS_$$_SYSBEEP
		mov	word [TC_$SYSUTILS_$$_ONBEEP],ax
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSUTILS_$$_ONBEEP
EXTERN	SYSUTILS_$$_SYSBEEP
EXTERN	SYSUTILS_$$_INITINTERNATIONAL
EXTERN	SYSUTILS_$$_INITEXCEPTIONS
