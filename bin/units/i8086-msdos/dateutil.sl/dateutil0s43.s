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
	GLOBAL DATEUTILS_$$_ENDOFTHEWEEK$TDATETIME$$TDATETIME
DATEUTILS_$$_ENDOFTHEWEEK$TDATETIME$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,12
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
		mov	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fsubr	qword [bp+4]
		wait fadd	qword [_$DATEUTILS$_Ld2]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	DATEUTILS_$$_ENDOFTHEDAY$TDATETIME$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	DATEUTILS_$$_ENDOFTHEDAY$TDATETIME$$TDATETIME
EXTERN	_$DATEUTILS$_Ld2
EXTERN	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
