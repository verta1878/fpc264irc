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
	GLOBAL DATEUTILS_$$_DAYOFTHEYEAR$TDATETIME$$WORD
DATEUTILS_$$_DAYOFTHEYEAR$TDATETIME$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,14
		fstcw	[bp-6]
		fstcw	[bp-4]
		DB	09bh
		or	word [bp-6],3840
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_STARTOFTHEYEAR$TDATETIME$$TDATETIME
		wait fsubr	qword [bp+4]
		wait fld1
		wait faddp	st1,st0
		wait fldcw	[bp-6]
		wait fistp	qword [bp-14]
		wait fldcw	[bp-4]
		DB	09bh
		mov	ax,word [bp-14]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	DATEUTILS_$$_STARTOFTHEYEAR$TDATETIME$$TDATETIME
