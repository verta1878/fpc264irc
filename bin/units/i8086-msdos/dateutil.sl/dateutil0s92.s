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
	GLOBAL DATEUTILS_$$_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
DATEUTILS_$$_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,10
		wait fld	qword [bp+4]
		wait fsubr	qword [bp+12]
		wait fstp	qword [bp-8]
		DB	09bh
		wait fldz
		wait fld	qword [bp+12]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1256
		ja	..@j1255
..@j1256:
		jmp	..@j1254
..@j1255:
		wait fldz
		wait fld	qword [bp+4]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1257
		jb	..@j1253
..@j1257:
		jmp	..@j1254
..@j1253:
		wait fld	qword [bp-8]
		wait fld	tword [_$DATEUTILS$_Ld3]
		wait fsubp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1260
..@j1254:
		wait fld	qword [bp+12]
		wait fld	tword [_$DATEUTILS$_Ld4]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1264
		ja	..@j1263
..@j1264:
		jmp	..@j1262
..@j1263:
		wait fld	qword [bp+4]
		wait fld	tword [_$DATEUTILS$_Ld4]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1265
		jb	..@j1261
..@j1265:
		jmp	..@j1262
..@j1261:
		wait fld	qword [bp-8]
		wait fld	tword [_$DATEUTILS$_Ld3]
		wait faddp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
..@j1262:
..@j1260:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	_$DATEUTILS$_Ld4
EXTERN	_$DATEUTILS$_Ld3
