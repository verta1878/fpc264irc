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
	GLOBAL DATEUTILS_$$_ENDOFADAY$WORD$WORD$$TDATETIME
DATEUTILS_$$_ENDOFADAY$WORD$WORD$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,20
		push	word [bp+6]
		call	DATEUTILS_$$_STARTOFAYEAR$WORD$$TDATETIME
		mov	ax,word [bp+4]
		mov	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait faddp	st1,st0
		wait fld1
		wait fsubp	st1,st0
		wait fstp	qword [bp-20]
		DB	09bh
		mov	ax,23
		push	ax
		mov	ax,59
		push	ax
		mov	ax,59
		push	ax
		mov	ax,999
		push	ax
		call	SYSUTILS_$$_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
		wait fld	qword [bp-20]
		wait faddp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
EXTERN	DATEUTILS_$$_STARTOFAYEAR$WORD$$TDATETIME
