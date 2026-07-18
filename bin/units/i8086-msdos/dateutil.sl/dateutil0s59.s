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
	GLOBAL DATEUTILS_$$_MINUTEOFTHEYEAR$TDATETIME$$LONGWORD
DATEUTILS_$$_MINUTEOFTHEYEAR$TDATETIME$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,20
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
		mov	ax,word [bp-8]
		mov	word [bp-20],ax
		mov	word [bp-18],0
		mov	ax,word [bp-6]
		mov	word [bp-14],ax
		mov	word [bp-16],0
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
		mov	cx,ax
		mov	ax,dx
		add	cx,word [bp-14]
		adc	ax,word [bp-16]
		push	ax
		push	cx
		mov	ax,0
		push	ax
		mov	ax,60
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		add	ax,word [bp-20]
		adc	dx,word [bp-18]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_mul_longint
EXTERN	DATEUTILS_$$_DAYOFTHEYEAR$TDATETIME$$WORD
EXTERN	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
