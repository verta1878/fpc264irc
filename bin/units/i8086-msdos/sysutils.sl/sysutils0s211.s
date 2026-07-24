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
	GLOBAL SYSUTILS_$$_TRYFLOATTOCURR$EXTENDED$CURRENCY$$BOOLEAN
SYSUTILS_$$_TRYFLOATTOCURR$EXTENDED$CURRENCY$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		wait fld	tword [bp+6]
		wait fld	tword [_$SYSUTILS$_Ld626]
		wait fmulp	st1,st0
		wait fild	qword [TC_$SYSUTILS_$$_MINCURRENCY]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j7189
		jbe	..@j7188
..@j7189:
		jmp	..@j7187
..@j7188:
		wait fld	tword [bp+6]
		wait fld	tword [_$SYSUTILS$_Ld626]
		wait fmulp	st1,st0
		wait fild	qword [TC_$SYSUTILS_$$_MAXCURRENCY]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j7190
		jae	..@j7186
..@j7190:
		jmp	..@j7187
..@j7186:
		mov	byte [bp-1],1
		jmp	..@j7191
..@j7187:
		mov	byte [bp-1],0
..@j7191:
		cmp	byte [bp-1],0
		jne	..@j7192
		jmp	..@j7193
..@j7192:
		mov	bx,word [bp+4]
		wait fld	tword [bp+6]
		wait fld	tword [_$SYSUTILS$_Ld626]
		wait fmulp	st1,st0
		wait fistp	qword [bx]
		DB	09bh
..@j7193:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	TC_$SYSUTILS_$$_MAXCURRENCY
EXTERN	TC_$SYSUTILS_$$_MINCURRENCY
EXTERN	_$SYSUTILS$_Ld626
