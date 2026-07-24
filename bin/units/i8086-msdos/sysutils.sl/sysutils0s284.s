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
	GLOBAL SYSUTILS_$$_TIME$$TDATETIME
SYSUTILS_$$_TIME$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,24
		lea	ax,[bp-24]
		push	ax
		call	SYSUTILS_$$_GETLOCALTIME$TSYSTEMTIME
		push	word [bp-16]
		push	word [bp-14]
		push	word [bp-12]
		push	word [bp-10]
		call	SYSUTILS_$$_DOENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSUTILS_$$_DOENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
EXTERN	SYSUTILS_$$_GETLOCALTIME$TSYSTEMTIME
