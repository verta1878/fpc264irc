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
	GLOBAL DATEUTILS_$$_STARTOFTHEWEEK$TDATETIME$$TDATETIME
DATEUTILS_$$_STARTOFTHEWEEK$TDATETIME$$TDATETIME:
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
		call	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
		mov	dx,ax
		mov	cx,0
		mov	dx,ax
		mov	cx,0
		mov	si,0
		mov	di,0
		fstcw	[bp-12]
		fstcw	[bp-10]
		DB	09bh
		or	word [bp-12],3840
		wait fld	qword [bp+4]
		wait fldcw	[bp-12]
		wait fistp	qword [bp-20]
		wait fldcw	[bp-10]
		DB	09bh
		mov	ax,word [bp-20]
		mov	bx,word [bp-18]
		sub	ax,dx
		sbb	bx,cx
		mov	dx,ax
		mov	cx,bx
		mov	ax,word [bp-16]
		mov	bx,word [bp-14]
		sbb	ax,si
		sbb	bx,di
		mov	si,ax
		mov	di,bx
		add	dx,1
		adc	cx,0
		adc	si,0
		adc	di,0
		mov	word [bp-16],dx
		mov	word [bp-14],cx
		mov	word [bp-12],si
		mov	word [bp-10],di
		wait fild	qword [bp-16]
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
