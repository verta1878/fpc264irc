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
	GLOBAL TYPES$_$TRECT_$__$$_SPLITRECT$TSPLITRECTTYPE$DOUBLE$$TRECT
TYPES$_$TRECT_$__$$_SPLITRECT$TSPLITRECTTYPE$DOUBLE$$TRECT:
		push	bp
		mov	bp,sp
		sub	sp,40
		mov	ax,word [bp+16]
		mov	si,word [bp+18]
		mov	di,ax
		push	ds
		pop	es
		cld
		mov	cx,8
		rep
		movsw
		mov	dx,word [bp+12]
		mov	ax,word [bp+14]
		test	ax,ax
		jne	..@j455
		test	dx,dx
		je	..@j451
..@j455:
		test	ax,ax
		jne	..@j456
		cmp	dx,1
		je	..@j452
..@j456:
		test	ax,ax
		jne	..@j457
		cmp	dx,2
		je	..@j453
..@j457:
		test	ax,ax
		jne	..@j458
		cmp	dx,3
		je	..@j454
..@j458:
		jmp	..@j450
..@j451:
		mov	bx,word [bp+18]
		mov	ax,word [bx]
		mov	word [bp-40],ax
		mov	ax,word [bx+2]
		mov	word [bp-38],ax
		mov	ax,word [bp-40]
		mov	word [bp-24],ax
		mov	dx,word [bp-38]
		mov	cl,15
		sar	dx,cl
		mov	word [bp-24],dx
		fstcw	[bp-4]
		fstcw	[bp-2]
		DB	09bh
		or	word [bp-4],3840
		mov	ax,word [bp+18]
		mov	bx,ax
		mov	di,word [bx+8]
		mov	si,word [bx+10]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		sub	di,ax
		sbb	si,cx
		mov	cx,di
		mov	ax,si
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		wait fild	dword [bp-8]
		wait fmul	qword [bp+4]
		wait fldcw	[bp-4]
		wait fistp	qword [bp-16]
		wait fldcw	[bp-2]
		DB	09bh
		mov	ax,word [bp-40]
		add	ax,word [bp-16]
		mov	word [bp-40],ax
		mov	ax,word [bp-38]
		adc	ax,word [bp-14]
		mov	word [bp-38],ax
		mov	ax,word [bp-24]
		adc	ax,word [bp-12]
		mov	word [bp-24],ax
		adc	dx,word [bp-10]
		mov	ax,word [bp-40]
		mov	dx,word [bp-38]
		mov	bx,word [bp+16]
		mov	word [bx+8],ax
		mov	word [bx+10],dx
		jmp	..@j449
..@j452:
		mov	bx,word [bp+18]
		mov	ax,word [bx+8]
		mov	word [bp-36],ax
		mov	ax,word [bx+10]
		mov	word [bp-34],ax
		mov	ax,word [bp-36]
		mov	word [bp-18],ax
		mov	dx,word [bp-34]
		mov	cl,15
		sar	dx,cl
		mov	word [bp-18],dx
		fstcw	[bp-4]
		fstcw	[bp-2]
		DB	09bh
		or	word [bp-4],3840
		mov	ax,word [bp+18]
		mov	bx,ax
		mov	di,word [bx+8]
		mov	si,word [bx+10]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		sub	di,ax
		sbb	si,cx
		mov	cx,di
		mov	ax,si
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		wait fild	dword [bp-8]
		wait fmul	qword [bp+4]
		wait fldcw	[bp-4]
		wait fistp	qword [bp-12]
		wait fldcw	[bp-2]
		DB	09bh
		mov	ax,word [bp-36]
		sub	ax,word [bp-12]
		mov	word [bp-36],ax
		mov	ax,word [bp-34]
		sbb	ax,word [bp-10]
		mov	word [bp-34],ax
		mov	ax,word [bp-18]
		sbb	ax,word [bp-8]
		mov	word [bp-18],ax
		sbb	dx,word [bp-6]
		mov	ax,word [bp-36]
		mov	dx,word [bp-34]
		mov	bx,word [bp+16]
		mov	word [bx],ax
		mov	word [bx+2],dx
		jmp	..@j449
..@j453:
		mov	bx,word [bp+18]
		mov	ax,word [bx+4]
		mov	word [bp-32],ax
		mov	ax,word [bx+6]
		mov	word [bp-30],ax
		mov	ax,word [bp-32]
		mov	word [bp-22],ax
		mov	dx,word [bp-30]
		mov	cl,15
		sar	dx,cl
		mov	word [bp-22],dx
		fstcw	[bp-4]
		fstcw	[bp-2]
		DB	09bh
		or	word [bp-4],3840
		mov	ax,word [bp+18]
		mov	bx,ax
		mov	di,word [bx+12]
		mov	si,word [bx+14]
		mov	ax,word [bx+4]
		mov	cx,word [bx+6]
		sub	di,ax
		sbb	si,cx
		mov	cx,di
		mov	ax,si
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		wait fild	dword [bp-8]
		wait fmul	qword [bp+4]
		wait fldcw	[bp-4]
		wait fistp	qword [bp-12]
		wait fldcw	[bp-2]
		DB	09bh
		mov	ax,word [bp-32]
		add	ax,word [bp-12]
		mov	word [bp-32],ax
		mov	ax,word [bp-30]
		adc	ax,word [bp-10]
		mov	word [bp-30],ax
		mov	ax,word [bp-22]
		adc	ax,word [bp-8]
		mov	word [bp-22],ax
		adc	dx,word [bp-6]
		mov	ax,word [bp-32]
		mov	dx,word [bp-30]
		mov	bx,word [bp+16]
		mov	word [bx+12],ax
		mov	word [bx+14],dx
		jmp	..@j449
..@j454:
		mov	bx,word [bp+18]
		mov	ax,word [bx+12]
		mov	word [bp-26],ax
		mov	ax,word [bx+14]
		mov	word [bp-28],ax
		mov	ax,word [bp-26]
		mov	word [bp-20],ax
		mov	dx,word [bp-28]
		mov	cl,15
		sar	dx,cl
		mov	word [bp-20],dx
		fstcw	[bp-4]
		fstcw	[bp-2]
		DB	09bh
		or	word [bp-4],3840
		mov	ax,word [bp+18]
		mov	bx,ax
		mov	di,word [bx+12]
		mov	si,word [bx+14]
		mov	cx,word [bx+4]
		mov	ax,word [bx+6]
		sub	di,cx
		sbb	si,ax
		mov	cx,di
		mov	ax,si
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		wait fild	dword [bp-8]
		wait fmul	qword [bp+4]
		wait fldcw	[bp-4]
		wait fistp	qword [bp-12]
		wait fldcw	[bp-2]
		DB	09bh
		mov	ax,word [bp-26]
		sub	ax,word [bp-12]
		mov	word [bp-26],ax
		mov	ax,word [bp-28]
		sbb	ax,word [bp-10]
		mov	word [bp-28],ax
		mov	ax,word [bp-20]
		sbb	ax,word [bp-8]
		mov	word [bp-20],ax
		sbb	dx,word [bp-6]
		mov	dx,word [bp-26]
		mov	ax,word [bp-28]
		mov	bx,word [bp+16]
		mov	word [bx+4],dx
		mov	word [bx+6],ax
		jmp	..@j449
..@j450:
..@j449:
		mov	sp,bp
		pop	bp
		ret	16
