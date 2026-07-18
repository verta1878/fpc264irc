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
	GLOBAL DATEUTILS_$$_STARTOFADAY$WORD$WORD$$TDATETIME
DATEUTILS_$$_STARTOFADAY$WORD$WORD$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,12
		push	word [bp+6]
		call	DATEUTILS_$$_STARTOFAYEAR$WORD$$TDATETIME
		mov	dx,word [bp+4]
		mov	ax,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		wait fild	dword [bp-12]
		wait faddp	st1,st0
		wait fld1
		wait fsubp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	DATEUTILS_$$_STARTOFAYEAR$WORD$$TDATETIME
