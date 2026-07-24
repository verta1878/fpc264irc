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
	GLOBAL MATH_$$_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED
MATH_$$_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,12
		wait fldz
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j302
		je	..@j300
..@j302:
		jmp	..@j301
..@j300:
		wait fldz
		wait fld	tword [bp+14]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j305
		je	..@j303
..@j305:
		jmp	..@j304
..@j303:
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j308
..@j304:
		wait fldz
		wait fld	tword [bp+14]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j311
		ja	..@j309
..@j311:
		jmp	..@j310
..@j309:
		wait fldpi
		wait fld	tword [_$MATH$_Ld9]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j314
..@j310:
		wait fldz
		wait fld	tword [bp+14]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j317
		jb	..@j315
..@j317:
		jmp	..@j316
..@j315:
		wait fldpi
		wait fchs
		wait fld	tword [_$MATH$_Ld9]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j316:
..@j314:
..@j308:
		jmp	..@j320
..@j301:
		wait fld	tword [bp+4]
		wait fld	tword [bp+14]
		wait fdivrp	st1,st0
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_arctan_real
		wait fstp	tword [bp-10]
		DB	09bh
..@j320:
		wait fldz
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j327
		jb	..@j325
..@j327:
		jmp	..@j326
..@j325:
		wait fldpi
		wait fld	tword [bp-10]
		wait faddp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j326:
		wait fldpi
		wait fld	tword [bp-10]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j332
		ja	..@j330
..@j332:
		jmp	..@j331
..@j330:
		wait fldpi
		wait fld	tword [_$MATH$_Ld5]
		wait fmulp	st1,st0
		wait fld	tword [bp-10]
		wait fsubrp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j331:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	20
EXTERN	_$MATH$_Ld5
EXTERN	fpc_arctan_real
EXTERN	_$MATH$_Ld9
