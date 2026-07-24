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
	GLOBAL DATEUTILS_$$_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD
DATEUTILS_$$_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		sub	sp,16
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	bx,word [bp+10]
		push	word [bx]
		mov	bx,word [bp+8]
		push	word [bx]
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
		wait fstp	qword [bp-14]
		DB	09bh
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-14]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
		mov	word [bp-4],ax
		mov	ax,word [bp-2]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	cx,word [bp-4]
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		mov	word [bp-16],cx
		cmp	word [bp-4],4
		ja	..@j2078
		jmp	..@j2079
..@j2078:
		sub	word [bp-16],7
..@j2079:
		cmp	word [bp-16],0
		jle	..@j2080
		jmp	..@j2081
..@j2080:
		wait fld1
		wait fsubr	qword [bp-14]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	DATEUTILS_$$_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD
		jmp	..@j2092
..@j2081:
		mov	ax,word [bp-16]
		cwd
		mov	cx,7
		idiv	cx
		test	dx,dx
		mov	al,0
		je	..@j2097
		inc	ax
..@j2097:
		mov	bl,al
		mov	bh,0
		mov	cx,word [bp-16]
		mov	ax,18725
		imul	cx
		mov	ax,cx
		sar	dx,1
		mov	cl,15
		shr	ax,cl
		add	dx,ax
		add	dx,bx
		mov	bx,word [bp+6]
		mov	word [bx],dx
		mov	bx,word [bp+10]
		push	word [bx]
		mov	bx,word [bp+8]
		push	word [bx]
		call	DATEUTILS_$$_ENDOFAMONTH$WORD$WORD$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
		mov	word [bp-6],ax
		cmp	word [bp-6],4
		jb	..@j2108
		jmp	..@j2107
..@j2108:
		mov	bx,word [bp+10]
		push	word [bx]
		mov	bx,word [bp+8]
		push	word [bx]
		call	DATEUTILS_$$_DAYSINAMONTH$WORD$WORD$$WORD
		mov	dx,0
		mov	bx,word [bp-2]
		mov	cx,0
		sub	ax,bx
		sbb	dx,cx
		mov	cx,word [bp-6]
		mov	bx,0
		cmp	dx,bx
		jl	..@j2106
		jg	..@j2107
		cmp	ax,cx
		jb	..@j2106
		jmp	..@j2107
..@j2106:
		mov	bx,word [bp+6]
		mov	word [bx],1
		mov	bx,word [bp+8]
		inc	word [bx]
		mov	bx,word [bp+8]
		cmp	word [bx],13
		je	..@j2115
		jmp	..@j2116
..@j2115:
		mov	bx,word [bp+8]
		mov	word [bx],1
		mov	bx,word [bp+10]
		inc	word [bx]
..@j2116:
..@j2107:
..@j2092:
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	DATEUTILS_$$_DAYSINAMONTH$WORD$WORD$$WORD
EXTERN	DATEUTILS_$$_ENDOFAMONTH$WORD$WORD$$TDATETIME
EXTERN	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
EXTERN	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
EXTERN	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
