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
	GLOBAL DATEUTILS_$$_SAMETIME$TDATETIME$TDATETIME$$BOOLEAN
DATEUTILS_$$_SAMETIME$TDATETIME$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		wait fld	qword [bp+4]
		wait fsubr	qword [bp+12]
		wait fabs
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_frac_real
		wait fld	tword [_$DATEUTILS$_Ld18]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jbe	..@j2593
		inc	ax
..@j2593:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	_$DATEUTILS$_Ld18
EXTERN	fpc_frac_real
