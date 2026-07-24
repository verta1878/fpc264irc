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
	GLOBAL MATH_$$_ISZERO$EXTENDED$EXTENDED$$BOOLEAN
MATH_$$_ISZERO$EXTENDED$EXTENDED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		wait fldz
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j1998
		je	..@j1996
..@j1998:
		jmp	..@j1997
..@j1996:
		lea	di,[bp+4]
		push	ds
		pop	es
		mov	si,word _$MATH$_Ld21
		cld
		mov	cx,5
		rep
		movsw
..@j1997:
		wait fld	tword [bp+14]
		wait fabs
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jb	..@j2003
		inc	ax
..@j2003:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	20
EXTERN	_$MATH$_Ld21
