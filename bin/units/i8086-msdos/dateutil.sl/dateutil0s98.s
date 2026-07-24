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
	GLOBAL DATEUTILS_$$_MINUTESBETWEEN$TDATETIME$TDATETIME$$INT64
DATEUTILS_$$_MINUTESBETWEEN$TDATETIME$TDATETIME$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,20
		fstcw	[bp-12]
		fstcw	[bp-10]
		DB	09bh
		or	word [bp-12],3840
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
		wait fabs
		wait fld	tword [_$DATEUTILS$_Ld5]
		wait faddp	st1,st0
		wait fld	tword [_$DATEUTILS$_Ld7]
		wait fmulp	st1,st0
		wait fldcw	[bp-12]
		wait fistp	qword [bp-20]
		wait fldcw	[bp-10]
		DB	09bh
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-20]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	_$DATEUTILS$_Ld7
EXTERN	_$DATEUTILS$_Ld5
EXTERN	DATEUTILS_$$_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
