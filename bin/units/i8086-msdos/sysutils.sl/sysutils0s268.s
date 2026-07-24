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
	GLOBAL SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,20
		wait fldz
		wait fld	qword [bp+12]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j9408
		jb	..@j9406
..@j9408:
		jmp	..@j9407
..@j9406:
		wait fld	qword [bp+4]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_frac_real
		wait fabs
		fstcw	[bp-12]
		fstcw	[bp-10]
		DB	09bh
		or	word [bp-12],3840
		wait fld	qword [bp+12]
		wait fldcw	[bp-12]
		wait fistp	qword [bp-20]
		wait fldcw	[bp-10]
		DB	09bh
		wait fild	qword [bp-20]
		wait fsubrp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j9413
..@j9407:
		wait fld	qword [bp+4]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_frac_real
		wait fabs
		fstcw	[bp-12]
		fstcw	[bp-10]
		DB	09bh
		or	word [bp-12],3840
		wait fld	qword [bp+12]
		wait fldcw	[bp-12]
		wait fistp	qword [bp-20]
		wait fldcw	[bp-10]
		DB	09bh
		wait fild	qword [bp-20]
		wait faddp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
..@j9413:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	fpc_frac_real
