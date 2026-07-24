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
	GLOBAL DATEUTILS_$$_STARTOFAWEEK$WORD$WORD$$TDATETIME
DATEUTILS_$$_STARTOFAWEEK$WORD$WORD$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,1
		push	ax
		call	DATEUTILS_$$_STARTOFAWEEK$WORD$WORD$WORD$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	DATEUTILS_$$_STARTOFAWEEK$WORD$WORD$WORD$$TDATETIME
