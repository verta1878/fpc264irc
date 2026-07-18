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
	GLOBAL CONVUTILS_$$_CONVERT$DOUBLE$TCONVTYPE$TCONVTYPE$TCONVTYPE$TCONVTYPE$$DOUBLE
CONVUTILS_$$_CONVERT$DOUBLE$TCONVTYPE$TCONVTYPE$TCONVTYPE$TCONVTYPE$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,70
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
		lea	ax,[bp-44]
		push	ax
		mov	ax,word INIT_$CONVUTILS_$$_RESOURCEDATA
		push	ax
		call	fpc_initialize
		lea	ax,[bp-56]
		push	ax
		mov	ax,word INIT_$CONVUTILS_$$_RESOURCEDATA
		push	ax
		call	fpc_initialize
		mov	ax,1
		push	ax
		lea	ax,[bp-68]
		push	ax
		lea	ax,[bp-62]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j239
		push	word [bp+10]
		lea	ax,[bp-20]
		push	ax
		call	CONVUTILS_$$_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN
		test	al,al
		je	..@j241
		jmp	..@j242
..@j241:
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,word _$CONVUTILS$_Ld2
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j239
..@j242:
		push	word [bp+6]
		lea	ax,[bp-44]
		push	ax
		call	CONVUTILS_$$_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN
		test	al,al
		je	..@j249
		jmp	..@j250
..@j249:
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,word _$CONVUTILS$_Ld2
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j239
..@j250:
		push	word [bp+8]
		lea	ax,[bp-32]
		push	ax
		call	CONVUTILS_$$_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN
		test	al,al
		je	..@j257
		jmp	..@j258
..@j257:
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,word _$CONVUTILS$_Ld2
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j239
..@j258:
		push	word [bp+4]
		lea	ax,[bp-56]
		push	ax
		call	CONVUTILS_$$_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN
		test	al,al
		je	..@j265
		jmp	..@j266
..@j265:
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,word _$CONVUTILS$_Ld2
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j239
..@j266:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-34]
		jne	..@j273
		jmp	..@j275
..@j275:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-34]
		jne	..@j273
		jmp	..@j274
..@j273:
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,word _$CONVUTILS$_Ld2
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j239
..@j274:
		wait fld	qword [bp-30]
		wait fdivr	qword [bp-18]
		wait fmul	qword [bp+12]
		wait fld	qword [bp-54]
		wait fdivr	qword [bp-42]
		wait fdivp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
..@j239:
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
		lea	ax,[bp-44]
		push	ax
		mov	ax,word INIT_$CONVUTILS_$$_RESOURCEDATA
		push	ax
		call	fpc_finalize
		lea	ax,[bp-56]
		push	ax
		mov	ax,word INIT_$CONVUTILS_$$_RESOURCEDATA
		push	ax
		call	fpc_finalize
		pop	ax
		test	ax,ax
		je	..@j240
		call	FPC_RERAISE
..@j240:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	FPC_RERAISE
EXTERN	fpc_finalize
EXTERN	FPC_POPADDRSTACK
EXTERN	_$CONVUTILS$_Ld2
EXTERN	CONVUTILS_$$_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_initialize
EXTERN	INIT_$CONVUTILS_$$_RESOURCEDATA
