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
	GLOBAL DATEUTILS_$$_DATETIMETOJULIANDATE$TDATETIME$$DOUBLE
DATEUTILS_$$_DATETIMETOJULIANDATE$TDATETIME$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,54
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
		mov	ax,0
		push	ax
		mov	ax,12
		push	ax
		mov	cx,word [bp-12]
		mov	bx,0
		mov	ax,14
		mov	dx,0
		sub	ax,cx
		sbb	dx,bx
		push	dx
		push	ax
		call	fpc_div_longint
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	bx,word [bp-14]
		add	bx,4800
		mov	cx,0
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		sub	bx,ax
		sbb	cx,dx
		mov	word [bp-22],bx
		mov	word [bp-20],cx
		mov	ax,word [bp-12]
		mov	word [bp-38],ax
		mov	word [bp-36],0
		mov	ax,0
		push	ax
		mov	ax,12
		push	ax
		push	word [bp-16]
		push	word [bp-18]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		add	ax,word [bp-38]
		adc	dx,word [bp-36]
		sub	ax,3
		sbb	dx,0
		mov	word [bp-26],ax
		mov	word [bp-24],dx
		mov	ax,word [bp-10]
		mov	word [bp-54],ax
		mov	word [bp-52],0
		mov	ax,0
		push	ax
		mov	ax,5
		push	ax
		mov	ax,0
		push	ax
		mov	ax,153
		push	ax
		push	word [bp-24]
		push	word [bp-26]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		add	ax,2
		adc	dx,0
		push	dx
		push	ax
		call	fpc_div_longint
		mov	word [bp-50],ax
		mov	word [bp-46],dx
		mov	ax,word [bp-50]
		add	ax,word [bp-54]
		mov	word [bp-50],ax
		mov	ax,word [bp-46]
		adc	ax,word [bp-52]
		mov	word [bp-46],ax
		mov	ax,0
		push	ax
		mov	ax,365
		push	ax
		push	word [bp-20]
		push	word [bp-22]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	word [bp-44],ax
		mov	word [bp-40],dx
		mov	ax,word [bp-44]
		add	ax,word [bp-50]
		mov	word [bp-44],ax
		mov	ax,word [bp-40]
		adc	ax,word [bp-46]
		mov	word [bp-40],ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		push	word [bp-20]
		push	word [bp-22]
		call	fpc_div_longint
		mov	word [bp-32],ax
		mov	word [bp-34],dx
		mov	ax,word [bp-32]
		add	ax,word [bp-44]
		mov	word [bp-32],ax
		mov	ax,word [bp-34]
		adc	ax,word [bp-40]
		mov	word [bp-34],ax
		mov	ax,0
		push	ax
		mov	ax,100
		push	ax
		push	word [bp-20]
		push	word [bp-22]
		call	fpc_div_longint
		mov	cx,word [bp-32]
		mov	word [bp-48],cx
		mov	cx,word [bp-34]
		mov	word [bp-42],cx
		sub	word [bp-48],ax
		sbb	word [bp-42],dx
		mov	ax,0
		push	ax
		mov	ax,400
		push	ax
		push	word [bp-20]
		push	word [bp-22]
		call	fpc_div_longint
		add	ax,word [bp-48]
		adc	dx,word [bp-42]
		sub	ax,32045
		sbb	dx,0
		mov	word [bp-30],ax
		mov	word [bp-28],dx
		wait fild	dword [bp-30]
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		wait fld	tword [_$DATEUTILS$_Ld3]
		wait fsubp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	_$DATEUTILS$_Ld3
EXTERN	fpc_mul_longint
EXTERN	fpc_div_longint
EXTERN	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
