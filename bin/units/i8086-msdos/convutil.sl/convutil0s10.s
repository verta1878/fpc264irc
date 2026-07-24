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
	GLOBAL CONVUTILS_$$_CONVERT$DOUBLE$TCONVTYPE$TCONVTYPE$$DOUBLE
CONVUTILS_$$_CONVERT$DOUBLE$TCONVTYPE$TCONVTYPE$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,46
		lea	ax,[bp-20]
		push	ax
		mov	ax,word INIT_$CONVUTILS_$$_RESOURCEDATA
		push	ax
		call	fpc_initialize
		lea	ax,[bp-32]
		push	ax
		mov	ax,word INIT_$CONVUTILS_$$_RESOURCEDATA
		push	ax
		call	fpc_initialize
		mov	ax,1
		push	ax
		lea	ax,[bp-44]
		push	ax
		lea	ax,[bp-38]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j197
		push	word [bp+6]
		lea	ax,[bp-20]
		push	ax
		call	CONVUTILS_$$_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN
		test	al,al
		je	..@j199
		jmp	..@j200
..@j199:
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,word _$CONVUTILS$_Ld2
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j197
..@j200:
		push	word [bp+4]
		lea	ax,[bp-32]
		push	ax
		call	CONVUTILS_$$_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN
		test	al,al
		je	..@j207
		jmp	..@j208
..@j207:
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,word _$CONVUTILS$_Ld2
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j197
..@j208:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-22]
		jne	..@j215
		jmp	..@j216
..@j215:
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,word _$CONVUTILS$_Ld2
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j197
..@j216:
		wait fld	qword [bp-18]
		wait fmul	qword [bp+8]
		wait fdiv	qword [bp-30]
		wait fstp	qword [bp-8]
		DB	09bh
..@j197:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		mov	ax,word INIT_$CONVUTILS_$$_RESOURCEDATA
		push	ax
		call	fpc_finalize
		lea	ax,[bp-32]
		push	ax
		mov	ax,word INIT_$CONVUTILS_$$_RESOURCEDATA
		push	ax
		call	fpc_finalize
		pop	ax
		test	ax,ax
		je	..@j198
		call	FPC_RERAISE
..@j198:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_RERAISE
EXTERN	fpc_finalize
EXTERN	FPC_POPADDRSTACK
EXTERN	_$CONVUTILS$_Ld2
EXTERN	CONVUTILS_$$_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_initialize
EXTERN	INIT_$CONVUTILS_$$_RESOURCEDATA
