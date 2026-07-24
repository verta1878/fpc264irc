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
	GLOBAL DATEUTILS_$$_SCANDATETIME$ANSISTRING$ANSISTRING$SMALLINT$$TDATETIME
DATEUTILS_$$_SCANDATETIME$ANSISTRING$ANSISTRING$SMALLINT$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		push	word [bp+4]
		call	DATEUTILS_$$_SCANDATETIME$ANSISTRING$ANSISTRING$TFORMATSETTINGS$SMALLINT$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	DATEUTILS_$$_SCANDATETIME$ANSISTRING$ANSISTRING$TFORMATSETTINGS$SMALLINT$$TDATETIME
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
