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
	GLOBAL DATEUTILS_$$_HOUROFTHEMONTH$TDATETIME$$WORD
DATEUTILS_$$_HOUROFTHEMONTH$TDATETIME$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,16
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	DATEUTILS_$$_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
		mov	ax,word [bp-8]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		push	dx
		push	ax
		mov	ax,0
		push	ax
		mov	ax,24
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cx,word [bp-10]
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		mov	word [bp-2],cx
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_mul_longint
EXTERN	DATEUTILS_$$_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
