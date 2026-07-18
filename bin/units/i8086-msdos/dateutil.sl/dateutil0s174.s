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
	GLOBAL DATEUTILS_$$_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
DATEUTILS_$$_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,52
		fstcw	[bp-36]
		fstcw	[bp-34]
		DB	09bh
		or	word [bp-36],3840
		wait fld	qword [bp+6]
		wait fld	tword [_$DATEUTILS$_Ld24]
		wait faddp	st1,st0
		wait fldcw	[bp-36]
		wait fistp	qword [bp-44]
		wait fldcw	[bp-34]
		DB	09bh
		mov	ax,word [bp-44]
		mov	word [bp-6],ax
		mov	ax,word [bp-42]
		mov	word [bp-4],ax
		mov	ax,2
		push	ax
		mov	ax,15025
		push	ax
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		add	ax,3
		adc	dx,0
		push	dx
		push	ax
		call	fpc_div_longint
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	ax,2
		push	ax
		mov	ax,15025
		push	ax
		push	word [bp-8]
		push	word [bp-10]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		push	dx
		push	ax
		call	fpc_div_longint
		mov	bx,word [bp-6]
		mov	cx,word [bp-4]
		sub	bx,ax
		sbb	cx,dx
		mov	word [bp-14],bx
		mov	word [bp-12],cx
		mov	ax,0
		push	ax
		mov	ax,1461
		push	ax
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		add	ax,3
		adc	dx,0
		push	dx
		push	ax
		call	fpc_div_longint
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1461
		push	ax
		push	word [bp-16]
		push	word [bp-18]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		push	dx
		push	ax
		call	fpc_div_longint
		mov	bx,word [bp-14]
		mov	cx,word [bp-12]
		sub	bx,ax
		sbb	cx,dx
		mov	word [bp-22],bx
		mov	word [bp-20],cx
		mov	ax,0
		push	ax
		mov	ax,153
		push	ax
		mov	ax,0
		push	ax
		mov	ax,5
		push	ax
		push	word [bp-20]
		push	word [bp-22]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		add	ax,2
		adc	dx,0
		push	dx
		push	ax
		call	fpc_div_longint
		mov	word [bp-26],ax
		mov	word [bp-24],dx
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
		mov	bx,word [bp-22]
		mov	cx,word [bp-20]
		sub	bx,ax
		sbb	cx,dx
		add	bx,1
		adc	cx,0
		mov	word [bp-28],bx
		mov	ax,word [bp-26]
		mov	dx,word [bp-24]
		mov	word [bp-50],ax
		mov	word [bp-52],dx
		add	word [bp-50],3
		adc	word [bp-52],0
		mov	ax,0
		push	ax
		mov	ax,12
		push	ax
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [bp-24]
		push	word [bp-26]
		call	fpc_div_longint
		push	dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cx,word [bp-50]
		mov	bx,word [bp-52]
		sub	cx,ax
		sbb	bx,dx
		mov	word [bp-30],cx
		mov	ax,0
		push	ax
		mov	ax,100
		push	ax
		push	word [bp-8]
		push	word [bp-10]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	bx,word [bp-18]
		mov	cx,word [bp-16]
		add	bx,ax
		adc	cx,dx
		mov	word [bp-48],bx
		mov	word [bp-46],cx
		sub	word [bp-48],4800
		sbb	word [bp-46],0
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [bp-24]
		push	word [bp-26]
		call	fpc_div_longint
		add	ax,word [bp-48]
		adc	dx,word [bp-46]
		mov	word [bp-32],ax
		push	word [bp-32]
		push	word [bp-30]
		push	word [bp-28]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
EXTERN	fpc_mul_longint
EXTERN	fpc_div_longint
EXTERN	_$DATEUTILS$_Ld24
