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
	GLOBAL DATEUTILS_$$_MILLISECONDOFTHEYEAR$TDATETIME$$INT64
DATEUTILS_$$_MILLISECONDOFTHEYEAR$TDATETIME$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,40
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
		mov	ax,word [bp-12]
		mov	word [bp-40],ax
		mov	word [bp-38],0
		mov	word [bp-36],0
		mov	word [bp-34],0
		mov	ax,word [bp-10]
		mov	word [bp-32],ax
		mov	word [bp-30],0
		mov	word [bp-28],0
		mov	word [bp-26],0
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_DAYOFTHEYEAR$TDATETIME$$WORD
		mov	cx,ax
		mov	bx,0
		mov	cx,ax
		mov	bx,0
		mov	ax,0
		mov	dx,0
		sub	cx,1
		sbb	bx,0
		sbb	ax,0
		sbb	dx,0
		push	dx
		push	ax
		push	bx
		push	cx
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,24
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,dx
		mov	dx,bx
		add	word [bp-32],si
		adc	word [bp-30],cx
		adc	word [bp-28],dx
		adc	word [bp-26],ax
		push	word [bp-26]
		push	word [bp-28]
		push	word [bp-30]
		push	word [bp-32]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,60
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,dx
		mov	dx,bx
		add	word [bp-40],si
		adc	word [bp-38],cx
		adc	word [bp-36],dx
		adc	word [bp-34],ax
		push	word [bp-34]
		push	word [bp-36]
		push	word [bp-38]
		push	word [bp-40]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,60
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	word [bp-22],dx
		mov	word [bp-20],cx
		mov	cx,word [bp-14]
		mov	dx,0
		mov	si,0
		mov	di,0
		add	word [bp-22],cx
		adc	word [bp-20],dx
		adc	bx,si
		adc	ax,di
		push	ax
		push	bx
		push	word [bp-20]
		push	word [bp-22]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1000
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	word [bp-24],dx
		mov	word [bp-18],cx
		mov	cx,word [bp-16]
		mov	si,0
		mov	di,0
		mov	dx,0
		add	word [bp-24],cx
		adc	word [bp-18],si
		adc	bx,di
		adc	ax,dx
		mov	dx,word [bp-24]
		mov	word [bp-8],dx
		mov	dx,word [bp-18]
		mov	word [bp-6],dx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_mul_int64
EXTERN	DATEUTILS_$$_DAYOFTHEYEAR$TDATETIME$$WORD
EXTERN	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
