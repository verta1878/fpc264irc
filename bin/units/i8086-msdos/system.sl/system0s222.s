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
	GLOBAL fpc_cos_real
fpc_cos_real:
		push	bp
		mov	bp,sp
		sub	sp,54
		wait fld	tword [bp+4]
		wait fstp	qword [bp-44]
		DB	09bh
		wait fld	qword [bp-44]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		lea	ax,[bp-26]
		push	ax
		call	SYSTEM_$$_REM_PIO2$DOUBLE$DOUBLE$$SMALLINT
		and	ax,3
		mov	word [bp-36],ax
		wait fld	qword [bp-26]
		wait fmul	qword [bp-26]
		wait fstp	qword [bp-34]
		DB	09bh
		cmp	word [bp-36],1
		je	..@j3233
		jmp	..@j3235
..@j3235:
		cmp	word [bp-36],3
		je	..@j3233
		jmp	..@j3234
..@j3233:
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-34]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word TC_$SYSTEM_$$_SINCOF
		push	ax
		mov	ax,5
		push	ax
		call	SYSTEM_$$_POLEVL$REAL$PREAL$SMALLINT$$REAL
		wait fld	qword [bp-26]
		wait fmul	qword [bp-26]
		wait fmul	qword [bp-26]
		wait fmulp	st1,st0
		wait fadd	qword [bp-26]
		wait fstp	qword [bp-18]
		DB	09bh
		jmp	..@j3244
..@j3234:
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-34]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,-1
		push	ax
		call	SYSTEM_$$_LDEXP$REAL$SMALLINT$$REAL
		wait fld1
		wait fsubrp	st1,st0
		wait fstp	tword [bp-54]
		DB	09bh
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-34]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word TC_$SYSTEM_$$_COSCOF
		push	ax
		mov	ax,5
		push	ax
		call	SYSTEM_$$_POLEVL$REAL$PREAL$SMALLINT$$REAL
		wait fld	qword [bp-34]
		wait fmul	qword [bp-34]
		wait fmulp	st1,st0
		wait fld	tword [bp-54]
		wait faddp	st1,st0
		wait fstp	qword [bp-18]
		DB	09bh
..@j3244:
		cmp	word [bp-36],1
		je	..@j3257
		jmp	..@j3259
..@j3259:
		cmp	word [bp-36],2
		je	..@j3257
		jmp	..@j3258
..@j3257:
		wait fld	qword [bp-18]
		wait fchs
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j3262
..@j3258:
		wait fld	qword [bp-18]
		wait fstp	tword [bp-10]
		DB	09bh
..@j3262:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	TC_$SYSTEM_$$_COSCOF
EXTERN	SYSTEM_$$_LDEXP$REAL$SMALLINT$$REAL
EXTERN	SYSTEM_$$_POLEVL$REAL$PREAL$SMALLINT$$REAL
EXTERN	TC_$SYSTEM_$$_SINCOF
EXTERN	SYSTEM_$$_REM_PIO2$DOUBLE$DOUBLE$$SMALLINT
