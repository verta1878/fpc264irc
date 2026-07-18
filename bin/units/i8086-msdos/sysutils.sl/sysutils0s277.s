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
	GLOBAL SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		sub	sp,44
		wait fld	qword [bp+10]
		wait fld	qword [_$SYSUTILS$_Ld654]
		wait fcompp
		fstsw	[bp-18]
		mov	ah,byte [bp-17]
		sahf
		jp	..@j9616
		jae	..@j9614
..@j9616:
		jmp	..@j9615
..@j9614:
		mov	bx,word [bp+8]
		mov	word [bx],0
		mov	bx,word [bp+6]
		mov	word [bx],0
		mov	bx,word [bp+4]
		mov	word [bx],0
		jmp	..@j9623
..@j9615:
		wait fldz
		wait fld	qword [bp+10]
		wait fcompp
		fstsw	[bp-18]
		mov	ah,byte [bp-17]
		sahf
		jp	..@j9626
		ja	..@j9624
..@j9626:
		jmp	..@j9625
..@j9624:
		wait fld	qword [bp+10]
		wait fld	tword [_$SYSUTILS$_Ld655]
		wait faddp	st1,st0
		wait fstp	qword [bp+10]
		DB	09bh
		jmp	..@j9629
..@j9625:
		wait fld	qword [bp+10]
		wait fld	tword [_$SYSUTILS$_Ld655]
		wait fsubp	st1,st0
		wait fstp	qword [bp+10]
		DB	09bh
..@j9629:
		wait fld	qword [TC_$SYSUTILS_$$_MAXDATETIME]
		wait fld	qword [bp+10]
		wait fcompp
		fstsw	[bp-18]
		mov	ah,byte [bp-17]
		sahf
		jp	..@j9634
		ja	..@j9632
..@j9634:
		jmp	..@j9633
..@j9632:
		lea	di,[bp+10]
		push	ds
		pop	es
		mov	si,word TC_$SYSUTILS_$$_MAXDATETIME
		cld
		mov	cx,4
		rep
		movsw
..@j9633:
		fstcw	[bp-20]
		fstcw	[bp-18]
		DB	09bh
		or	word [bp-20],3840
		wait fld	qword [bp+10]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_int_real
		wait fldcw	[bp-20]
		wait fistp	qword [bp-28]
		wait fldcw	[bp-18]
		DB	09bh
		mov	ax,word [bp-28]
		mov	si,word [bp-26]
		mov	bx,word [bp-24]
		mov	dx,word [bp-22]
		add	ax,-26996
		adc	si,10
		adc	bx,0
		adc	dx,0
		mov	cx,2
..@j9642:
		shl	ax,1
		rcl	si,1
		rcl	bx,1
		rcl	dx,1
		loop	..@j9642
		sub	ax,1
		sbb	si,0
		sbb	bx,0
		sbb	dx,0
		mov	word [bp-16],ax
		mov	word [bp-14],si
		mov	ax,2
		push	ax
		mov	ax,15025
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		call	fpc_div_dword
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,2
		push	ax
		mov	ax,15025
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	bx,word [bp-16]
		mov	cx,word [bp-14]
		sub	bx,ax
		sbb	cx,dx
		mov	word [bp-16],bx
		mov	word [bp-14],cx
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		shr	dx,1
		rcr	ax,1
		shr	dx,1
		rcr	ax,1
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	ax,0
		push	ax
		mov	ax,1461
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		add	ax,3
		adc	dx,0
		push	dx
		push	ax
		call	fpc_div_dword
		mov	word [bp-16],ax
		mov	word [bp-14],dx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		mov	word [bp-42],ax
		mov	word [bp-44],dx
		mov	word [bp-42],ax
		mov	word [bp-44],dx
		mov	word [bp-30],0
		mov	word [bp-38],0
		add	word [bp-42],7
		adc	word [bp-44],0
		adc	word [bp-30],0
		adc	word [bp-38],0
		push	word [bp-14]
		push	word [bp-16]
		mov	ax,0
		push	ax
		mov	ax,1461
		push	ax
		call	fpc_mul_dword_to_qword
		mov	si,dx
		mov	dx,bx
		sub	word [bp-42],si
		sbb	word [bp-44],cx
		sbb	word [bp-30],dx
		sbb	word [bp-38],ax
		mov	bx,word [bp-42]
		mov	si,word [bp-44]
		mov	dx,word [bp-30]
		mov	ax,word [bp-38]
		mov	cx,2
..@j9673:
		shr	ax,1
		rcr	dx,1
		rcr	si,1
		rcr	bx,1
		loop	..@j9673
		mov	word [bp-8],bx
		mov	word [bp-6],si
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,153
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		mov	ax,0
		push	ax
		mov	ax,5
		push	ax
		call	fpc_mul_dword_to_qword
		sub	dx,3
		sbb	cx,0
		sbb	bx,0
		sbb	ax,0
		push	ax
		push	bx
		push	cx
		push	dx
		call	fpc_div_int64
		mov	word [bp-12],dx
		mov	word [bp-10],cx
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,5
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		mov	ax,0
		push	ax
		mov	ax,5
		push	ax
		call	fpc_mul_dword_to_qword
		mov	word [bp-40],dx
		mov	word [bp-36],cx
		mov	word [bp-34],bx
		mov	word [bp-32],ax
		add	word [bp-40],2
		adc	word [bp-36],0
		adc	word [bp-34],0
		adc	word [bp-32],0
		mov	ax,0
		push	ax
		mov	ax,153
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		mov	ax,0
		push	ax
		call	fpc_mul_dword
		mov	cx,ax
		mov	bx,dx
		mov	cx,ax
		mov	bx,dx
		mov	ax,0
		mov	dx,0
		sub	word [bp-40],cx
		sbb	word [bp-36],bx
		sbb	word [bp-34],ax
		sbb	word [bp-32],dx
		push	word [bp-32]
		push	word [bp-34]
		push	word [bp-36]
		push	word [bp-40]
		call	fpc_div_int64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	ax,0
		push	ax
		mov	ax,100
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		mov	ax,0
		push	ax
		call	fpc_mul_dword
		mov	bx,word [bp-16]
		mov	cx,word [bp-14]
		add	bx,ax
		adc	cx,dx
		mov	word [bp-4],bx
		mov	word [bp-2],cx
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,0
		jb	..@j9709
		ja	..@j9710
		cmp	ax,10
		jb	..@j9709
		jmp	..@j9710
..@j9709:
		add	word [bp-12],3
		adc	word [bp-10],0
		jmp	..@j9711
..@j9710:
		sub	word [bp-12],9
		sbb	word [bp-10],0
		add	word [bp-4],1
		adc	word [bp-2],0
..@j9711:
		mov	bx,word [bp+8]
		mov	ax,word [bp-4]
		mov	word [bx],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-12]
		mov	word [bx],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-8]
		mov	word [bx],ax
..@j9623:
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	fpc_mul_dword
EXTERN	fpc_div_int64
EXTERN	fpc_mul_dword_to_qword
EXTERN	fpc_mul_longint
EXTERN	fpc_div_dword
EXTERN	fpc_int_real
EXTERN	TC_$SYSUTILS_$$_MAXDATETIME
EXTERN	_$SYSUTILS$_Ld655
EXTERN	_$SYSUTILS$_Ld654
