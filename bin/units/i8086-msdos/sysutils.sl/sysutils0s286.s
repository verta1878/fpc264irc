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
	GLOBAL SYSUTILS_$$_INCMONTH$TDATETIME$SMALLINT$$TDATETIME
SYSUTILS_$$_INCMONTH$TDATETIME$SMALLINT$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,18
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-14]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_INCAMONTH$WORD$WORD$WORD$SMALLINT
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		call	SYSUTILS_$$_DOENCODEDATE$WORD$WORD$WORD$$LONGINT
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		wait fild	dword [bp-18]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
EXTERN	SYSUTILS_$$_DOENCODEDATE$WORD$WORD$WORD$$LONGINT
EXTERN	SYSUTILS_$$_INCAMONTH$WORD$WORD$WORD$SMALLINT
EXTERN	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
