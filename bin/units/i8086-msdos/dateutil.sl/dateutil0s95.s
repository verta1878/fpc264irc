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
	GLOBAL DATEUTILS_$$_WEEKSBETWEEN$TDATETIME$TDATETIME$$SMALLINT
DATEUTILS_$$_WEEKSBETWEEN$TDATETIME$TDATETIME$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,7
		push	ax
		fstcw	[bp-6]
		fstcw	[bp-4]
		DB	09bh
		or	word [bp-6],3840
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
		wait fldcw	[bp-6]
		wait fistp	qword [bp-14]
		wait fldcw	[bp-4]
		DB	09bh
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		call	fpc_div_int64
		mov	word [bp-2],dx
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	fpc_div_int64
EXTERN	_$DATEUTILS$_Ld5
EXTERN	DATEUTILS_$$_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
