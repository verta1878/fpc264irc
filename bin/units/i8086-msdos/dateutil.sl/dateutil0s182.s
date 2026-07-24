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
	GLOBAL DATEUTILS_$$_MACTODATETIME$INT64$$TDATETIME
DATEUTILS_$$_MACTODATETIME$INT64$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,1904
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	DATEUTILS_$$_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
		wait fstp	qword [bp-16]
		DB	09bh
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	DATEUTILS_$$_INCSECOND$TDATETIME$INT64$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	DATEUTILS_$$_INCSECOND$TDATETIME$INT64$$TDATETIME
EXTERN	DATEUTILS_$$_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
