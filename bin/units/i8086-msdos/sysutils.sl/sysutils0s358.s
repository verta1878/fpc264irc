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
	GLOBAL SYSUTILS_$$_GETTICKCOUNT64$$QWORD
SYSUTILS_$$_GETTICKCOUNT64$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,20
		fstcw	[bp-12]
		fstcw	[bp-10]
		DB	09bh
		or	word [bp-12],3840
		call	SYSUTILS_$$_NOW$$TDATETIME
		wait fmul	qword [_$SYSUTILS$_Ld671]
		wait fmul	qword [_$SYSUTILS$_Ld672]
		wait fmul	qword [_$SYSUTILS$_Ld672]
		wait fmul	qword [_$SYSUTILS$_Ld673]
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
		ret
EXTERN	_$SYSUTILS$_Ld673
EXTERN	_$SYSUTILS$_Ld672
EXTERN	_$SYSUTILS$_Ld671
EXTERN	SYSUTILS_$$_NOW$$TDATETIME
