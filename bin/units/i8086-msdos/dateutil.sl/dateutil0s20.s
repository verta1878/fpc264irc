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
	GLOBAL DATEUTILS_$$_YESTERDAY$$TDATETIME
DATEUTILS_$$_YESTERDAY$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		call	SYSUTILS_$$_DATE$$TDATETIME
		wait fld1
		wait fsubp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSUTILS_$$_DATE$$TDATETIME
