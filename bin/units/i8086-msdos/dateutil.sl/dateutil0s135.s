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
	GLOBAL DATEUTILS_$$_DECODEDATEDAY$TDATETIME$WORD$WORD
DATEUTILS_$$_DECODEDATEDAY$TDATETIME$WORD$WORD:
		push	bp
		mov	bp,sp
		sub	sp,16
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+8]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
		fstcw	[bp-8]
		fstcw	[bp-6]
		DB	09bh
		or	word [bp-8],3840
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
		wait fsubr	qword [bp+8]
		wait fldcw	[bp-8]
		wait fistp	qword [bp-16]
		wait fldcw	[bp-6]
		DB	09bh
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	cx,word [bp-12]
		mov	bx,word [bp-10]
		add	ax,1
		adc	dx,0
		adc	cx,0
		adc	bx,0
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
EXTERN	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
