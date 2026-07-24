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
	GLOBAL SYSUTILS_$$_FMTSTR$ANSISTRING$ANSISTRING$array_of_const
SYSUTILS_$$_FMTSTR$ANSISTRING$ANSISTRING$array_of_const:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		call	SYSUTILS_$$_FMTSTR$ANSISTRING$ANSISTRING$array_of_const$TFORMATSETTINGS
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSUTILS_$$_FMTSTR$ANSISTRING$ANSISTRING$array_of_const$TFORMATSETTINGS
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
