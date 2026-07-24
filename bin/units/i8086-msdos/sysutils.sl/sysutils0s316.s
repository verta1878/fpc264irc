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
	GLOBAL SYSUTILS_$$_STRTODATETIME$ANSISTRING$$TDATETIME
SYSUTILS_$$_STRTODATETIME$ANSISTRING$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+4]
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		call	SYSUTILS_$$_STRTODATETIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_STRTODATETIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
