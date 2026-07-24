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
	GLOBAL DATEUTILS_$$_ENDOFAMONTH$WORD$WORD$$TDATETIME
DATEUTILS_$$_ENDOFAMONTH$WORD$WORD$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+6]
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		mov	ah,0
		mov	bx,ax
		mov	ax,24
		mul	bx
		mov	bx,ax
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		push	word [TC_$SYSUTILS_$$_MONTHDAYS+bx+si-2]
		mov	ax,23
		push	ax
		mov	ax,59
		push	ax
		mov	ax,59
		push	ax
		mov	ax,999
		push	ax
		call	DATEUTILS_$$_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	DATEUTILS_$$_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
EXTERN	TC_$SYSUTILS_$$_MONTHDAYS
EXTERN	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
