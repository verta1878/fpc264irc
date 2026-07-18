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
	GLOBAL SYSTEM_$$_FPOWER10$EXTENDED$LONGINT$$EXTENDED
SYSTEM_$$_FPOWER10$EXTENDED$LONGINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jl	..@j3297
		jg	..@j3298
		cmp	dx,0
		jb	..@j3297
		jmp	..@j3298
..@j3297:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		and	bx,31
		mov	ax,0
		mov	ax,10
		mul	bx
		mov	bx,ax
		wait fld	tword [bp+8]
		wait fld	tword [TC_$SYSTEM$_$FPOWER10$EXTENDED$LONGINT$$EXTENDED_$$_NEGPOW32+bx]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,5
..@j3305:
		shr	dx,1
		rcr	ax,1
		loop	..@j3305
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j3306
		cmp	ax,0
		jne	..@j3306
		jmp	..@j3307
..@j3306:
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		and	bx,15
		mov	ax,0
		mov	ax,10
		mul	bx
		mov	bx,ax
		wait fld	tword [bp-10]
		wait fld	tword [TC_$SYSTEM$_$FPOWER10$EXTENDED$LONGINT$$EXTENDED_$$_NEGPOW512+bx]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,4
..@j3312:
		shr	dx,1
		rcr	ax,1
		loop	..@j3312
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j3313
		cmp	ax,0
		jne	..@j3313
		jmp	..@j3314
..@j3313:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jl	..@j3315
		jg	..@j3316
		cmp	ax,9
		jbe	..@j3315
		jmp	..@j3316
..@j3315:
		mov	bx,word [bp+4]
		mov	ax,10
		mul	bx
		mov	bx,ax
		wait fld	tword [bp-10]
		wait fld	tword [TC_$SYSTEM$_$FPOWER10$EXTENDED$LONGINT$$EXTENDED_$$_NEGPOW4096+bx]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j3319
..@j3316:
		lea	di,[bp-10]
		push	ss
		pop	es
		mov	si,word _$SYSTEM$_Ld17
		cld
		mov	cx,5
		rep
		movsw
..@j3319:
..@j3314:
..@j3307:
		jmp	..@j3322
..@j3298:
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		and	bx,31
		mov	ax,0
		mov	ax,10
		mul	bx
		mov	bx,ax
		wait fld	tword [bp+8]
		wait fld	tword [TC_$SYSTEM$_$FPOWER10$EXTENDED$LONGINT$$EXTENDED_$$_POW32+bx]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,5
..@j3327:
		shr	dx,1
		rcr	ax,1
		loop	..@j3327
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j3328
		cmp	ax,0
		jne	..@j3328
		jmp	..@j3329
..@j3328:
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		and	bx,15
		mov	ax,0
		mov	ax,10
		mul	bx
		mov	bx,ax
		wait fld	tword [bp-10]
		wait fld	tword [TC_$SYSTEM$_$FPOWER10$EXTENDED$LONGINT$$EXTENDED_$$_POW512+bx]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,4
..@j3334:
		shr	dx,1
		rcr	ax,1
		loop	..@j3334
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j3335
		cmp	ax,0
		jne	..@j3335
		jmp	..@j3336
..@j3335:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jl	..@j3337
		jg	..@j3338
		cmp	ax,9
		jbe	..@j3337
		jmp	..@j3338
..@j3337:
		mov	bx,word [bp+4]
		mov	ax,10
		mul	bx
		mov	bx,ax
		wait fld	tword [bp-10]
		wait fld	tword [TC_$SYSTEM$_$FPOWER10$EXTENDED$LONGINT$$EXTENDED_$$_POW4096+bx]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j3341
..@j3338:
		lea	di,[bp-10]
		push	ss
		pop	es
		mov	si,word _$SYSTEM$_Ld17
		cld
		mov	cx,5
		rep
		movsw
..@j3341:
..@j3336:
..@j3329:
..@j3322:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	TC_$SYSTEM$_$FPOWER10$EXTENDED$LONGINT$$EXTENDED_$$_POW4096
EXTERN	TC_$SYSTEM$_$FPOWER10$EXTENDED$LONGINT$$EXTENDED_$$_POW512
EXTERN	TC_$SYSTEM$_$FPOWER10$EXTENDED$LONGINT$$EXTENDED_$$_POW32
EXTERN	_$SYSTEM$_Ld17
EXTERN	TC_$SYSTEM$_$FPOWER10$EXTENDED$LONGINT$$EXTENDED_$$_NEGPOW4096
EXTERN	TC_$SYSTEM$_$FPOWER10$EXTENDED$LONGINT$$EXTENDED_$$_NEGPOW512
EXTERN	TC_$SYSTEM$_$FPOWER10$EXTENDED$LONGINT$$EXTENDED_$$_NEGPOW32
