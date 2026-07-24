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
	GLOBAL SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,30
		cmp	word [bp+10],0
		ja	..@j9478
		jmp	..@j9474
..@j9478:
		cmp	word [bp+10],10000
		jb	..@j9477
		jmp	..@j9474
..@j9477:
		mov	ax,word [bp+8]
		dec	ax
		cmp	ax,12
		jb	..@j9479
..@j9479:
		jc	..@j9476
		jmp	..@j9474
..@j9476:
		cmp	word [bp+6],0
		ja	..@j9475
		jmp	..@j9474
..@j9475:
		push	word [bp+10]
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		mov	ah,0
		mov	bx,ax
		mov	ax,24
		mul	bx
		mov	bx,ax
		mov	ax,word [bp+8]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+6]
		cmp	ax,word [TC_$SYSUTILS_$$_MONTHDAYS+bx+si-2]
		jbe	..@j9473
		jmp	..@j9474
..@j9473:
		mov	byte [bp-1],1
		jmp	..@j9482
..@j9474:
		mov	byte [bp-1],0
..@j9482:
		cmp	byte [bp-1],0
		jne	..@j9483
		jmp	..@j9484
..@j9483:
		cmp	word [bp+8],2
		ja	..@j9485
		jmp	..@j9486
..@j9485:
		sub	word [bp+8],3
		jmp	..@j9487
..@j9486:
		add	word [bp+8],9
		dec	word [bp+10]
..@j9487:
		mov	dx,word [bp+10]
		mov	ax,-23593
		mul	dx
		add	ax,-23593
		adc	dx,0
		mov	cl,6
		shr	dx,cl
		mov	ax,0
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		mov	ax,word [bp+10]
		mov	word [bp-20],ax
		mov	word [bp-22],0
		mov	ax,0
		push	ax
		mov	ax,100
		push	ax
		push	word [bp-4]
		push	word [bp-6]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cx,word [bp-20]
		mov	bx,word [bp-22]
		sub	cx,ax
		sbb	bx,dx
		mov	word [bp-10],cx
		mov	word [bp-8],bx
		push	word [bp-4]
		push	word [bp-6]
		mov	ax,2
		push	ax
		mov	ax,15025
		push	ax
		call	fpc_mul_dword_to_qword
		mov	word [bp-30],dx
		mov	word [bp-28],cx
		mov	word [bp-26],bx
		mov	word [bp-24],ax
		mov	cx,2
..@j9505:
		shr	word [bp-24],1
		rcr	word [bp-26],1
		rcr	word [bp-28],1
		rcr	word [bp-30],1
		loop	..@j9505
		push	word [bp-8]
		push	word [bp-10]
		mov	ax,0
		push	ax
		mov	ax,1461
		push	ax
		call	fpc_mul_dword_to_qword
		mov	si,cx
		mov	cx,2
..@j9512:
		shr	ax,1
		rcr	bx,1
		rcr	si,1
		rcr	dx,1
		loop	..@j9512
		add	word [bp-30],dx
		adc	word [bp-28],si
		adc	word [bp-26],bx
		adc	word [bp-24],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,5
		push	ax
		mov	ax,0
		push	ax
		mov	ax,153
		push	ax
		mov	dx,word [bp+8]
		mov	ax,0
		push	ax
		push	dx
		mov	ax,0
		push	ax
		call	fpc_mul_dword
		mov	bx,ax
		mov	cx,dx
		mov	bx,ax
		mov	cx,dx
		mov	ax,0
		mov	dx,0
		add	bx,2
		adc	cx,0
		adc	ax,0
		adc	dx,0
		push	dx
		push	ax
		push	cx
		push	bx
		call	fpc_div_int64
		mov	si,dx
		mov	dx,bx
		add	word [bp-30],si
		adc	word [bp-28],cx
		adc	word [bp-26],dx
		adc	word [bp-24],ax
		mov	ax,word [bp+6]
		mov	dx,0
		mov	cx,ax
		mov	bx,dx
		mov	cx,ax
		mov	bx,dx
		mov	ax,0
		mov	dx,0
		add	word [bp-30],cx
		adc	word [bp-28],bx
		adc	word [bp-26],ax
		adc	word [bp-24],dx
		mov	ax,word [bp-30]
		mov	word [bp-18],ax
		mov	ax,word [bp-28]
		mov	word [bp-16],ax
		mov	ax,word [bp-26]
		mov	word [bp-14],ax
		mov	ax,word [bp-24]
		mov	word [bp-12],ax
		wait fild	qword [bp-18]
		mov	bx,word [bp+4]
		wait fstp	qword [bx]
		DB	09bh
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		wait fld	qword [_$SYSUTILS$_Ld651]
		wait fsubr	qword [bx]
		wait fstp	qword [si]
		DB	09bh
..@j9484:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	_$SYSUTILS$_Ld651
EXTERN	fpc_div_int64
EXTERN	fpc_mul_dword
EXTERN	fpc_mul_dword_to_qword
EXTERN	fpc_mul_longint
EXTERN	TC_$SYSUTILS_$$_MONTHDAYS
EXTERN	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
