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
	GLOBAL DATEUTILS_$$_RECODEYEAR$TDATETIME$WORD$$TDATETIME
DATEUTILS_$$_RECODEYEAR$TDATETIME$WORD$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		push	word [bp+4]
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		call	DATEUTILS_$$_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	DATEUTILS_$$_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
