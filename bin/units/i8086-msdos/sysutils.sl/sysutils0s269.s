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
	GLOBAL SYSUTILS_$$_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP
SYSUTILS_$$_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP:
		push	bp
		mov	bp,sp
		sub	sp,28
		wait fld	qword [bp+4]
		wait fmul	qword [_$SYSUTILS$_Ld647]
		wait fstp	qword [bp-8]
		DB	09bh
		wait fldz
		wait fld	qword [bp-8]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j9424
		jb	..@j9422
..@j9424:
		jmp	..@j9423
..@j9422:
		wait fld	qword [bp-8]
		wait fld	tword [_$SYSUTILS$_Ld648]
		wait fsubp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j9427
..@j9423:
		wait fld	qword [bp-8]
		wait fld	tword [_$SYSUTILS$_Ld648]
		wait faddp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
..@j9427:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1318
		push	ax
		mov	ax,23552
		push	ax
		fstcw	[bp-20]
		fstcw	[bp-10]
		DB	09bh
		or	word [bp-20],3840
		wait fld	qword [bp-8]
		wait fldcw	[bp-20]
		wait fistp	qword [bp-28]
		wait fldcw	[bp-10]
		DB	09bh
		lea	di,[bp-18]
		push	ss
		pop	es
		lea	si,[bp-28]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	cx,word [bp-14]
		mov	bx,word [bp-12]
		cmp	bx,0
		jl	..@j9438
		jg	..@j9439
		cmp	cx,0
		jb	..@j9438
		ja	..@j9439
		cmp	dx,0
		jb	..@j9438
		ja	..@j9439
		cmp	ax,0
		jb	..@j9438
		jmp	..@j9439
..@j9438:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	cx,word [bp-14]
		mov	bx,word [bp-12]
		not	cx
		not	bx
		not	dx
		neg	ax
		sbb	dx,-1
		sbb	cx,-1
		sbb	bx,-1
		jmp	..@j9442
..@j9439:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	cx,word [bp-14]
		mov	bx,word [bp-12]
..@j9442:
		push	bx
		push	cx
		push	dx
		push	ax
		call	fpc_mod_int64
		mov	bx,word [bp+12]
		mov	word [bx],dx
		mov	word [bx+2],cx
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1318
		push	ax
		mov	ax,23552
		push	ax
		fstcw	[bp-12]
		fstcw	[bp-10]
		DB	09bh
		or	word [bp-12],3840
		wait fld	qword [bp-8]
		wait fldcw	[bp-12]
		wait fistp	qword [bp-20]
		wait fldcw	[bp-10]
		DB	09bh
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		push	word [bp-20]
		call	fpc_div_int64
		add	dx,-27302
		adc	cx,10
		adc	bx,0
		adc	ax,0
		mov	bx,word [bp+12]
		mov	word [bx+4],dx
		mov	word [bx+6],cx
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_div_int64
EXTERN	fpc_mod_int64
EXTERN	_$SYSUTILS$_Ld648
EXTERN	_$SYSUTILS$_Ld647
