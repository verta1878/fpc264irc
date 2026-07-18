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
	GLOBAL SYSUTILS_$$_TIMESTAMPTODATETIME$TTIMESTAMP$$TDATETIME
SYSUTILS_$$_TIMESTAMPTODATETIME$TTIMESTAMP$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		sub	ax,-27302
		sbb	dx,10
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		mov	bx,word [bp+4]
		wait fild	dword [bx]
		wait fld	tword [_$SYSUTILS$_Ld649]
		wait fdivp	st1,st0
		wait fstp	qword [bp-20]
		DB	09bh
		wait fld	qword [bp-20]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
EXTERN	_$SYSUTILS$_Ld649
