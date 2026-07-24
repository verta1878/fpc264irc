BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL MATH_$$_ISZERO$DOUBLE$DOUBLE$$BOOLEAN
MATH_$$_ISZERO$DOUBLE$DOUBLE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		wait fldz
		wait fld	qword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j1980
		je	..@j1978
..@j1980:
		jmp	..@j1979
..@j1978:
		lea	di,[bp+4]
		push	ds
		pop	es
		mov	si,word _$MATH$_Ld19
		cld
		mov	cx,4
		rep
		movsw
..@j1979:
		wait fld	qword [bp+12]
		wait fabs
		wait fld	qword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jb	..@j1985
		inc	ax
..@j1985:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	_$MATH$_Ld19
