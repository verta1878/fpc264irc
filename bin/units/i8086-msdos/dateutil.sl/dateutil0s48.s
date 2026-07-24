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
	GLOBAL DATEUTILS_$$_STARTOFTHEDAY$TDATETIME$$TDATETIME
DATEUTILS_$$_STARTOFTHEDAY$TDATETIME$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,20
		fstcw	[bp-12]
		fstcw	[bp-10]
		DB	09bh
		or	word [bp-12],3840
		wait fld	qword [bp+4]
		wait fldcw	[bp-12]
		wait fistp	qword [bp-20]
		wait fldcw	[bp-10]
		DB	09bh
		wait fild	qword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
