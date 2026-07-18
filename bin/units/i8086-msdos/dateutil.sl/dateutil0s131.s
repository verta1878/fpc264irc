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
	GLOBAL DATEUTILS_$$_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD
DATEUTILS_$$_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		sub	sp,28
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+10]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_YEAROF$TDATETIME$$WORD
		mov	bx,word [bp+8]
		mov	word [bx],ax
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+10]
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_DAYOFWEEK$TDATETIME$$SMALLINT
		dec	ax
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	bx,word [bp+4]
		cmp	word [bx],0
		je	..@j1882
		jmp	..@j1883
..@j1882:
		mov	bx,word [bp+4]
		mov	word [bx],7
..@j1883:
		mov	bx,word [bp+8]
		push	word [bx]
		call	DATEUTILS_$$_STARTOFAYEAR$WORD$$TDATETIME
		wait fstp	qword [bp-12]
		DB	09bh
		fstcw	[bp-20]
		fstcw	[bp-18]
		DB	09bh
		or	word [bp-20],3840
		wait fld	qword [bp-12]
		wait fsubr	qword [bp+10]
		wait fldcw	[bp-20]
		wait fistp	qword [bp-28]
		wait fldcw	[bp-18]
		DB	09bh
		mov	ax,word [bp-28]
		mov	cx,word [bp-26]
		mov	dx,word [bp-24]
		mov	bx,word [bp-22]
		add	ax,1
		adc	cx,0
		adc	dx,0
		adc	bx,0
		mov	word [bp-2],ax
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-12]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
		mov	word [bp-14],ax
		cmp	word [bp-14],5
		jb	..@j1896
		jmp	..@j1897
..@j1896:
		mov	ax,word [bp-14]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		add	word [bp-2],ax
		jmp	..@j1898
..@j1897:
		mov	cx,word [bp-14]
		mov	bx,0
		mov	ax,8
		mov	dx,0
		sub	ax,cx
		sbb	dx,bx
		sub	word [bp-2],ax
..@j1898:
		cmp	word [bp-2],0
		jle	..@j1899
		jmp	..@j1900
..@j1899:
		wait fld1
		wait fsubr	qword [bp-12]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	DATEUTILS_$$_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD
		jmp	..@j1909
..@j1900:
		mov	cx,word [bp-2]
		mov	ax,18725
		imul	cx
		mov	ax,cx
		sar	dx,1
		mov	cl,15
		shr	ax,cl
		add	dx,ax
		mov	bx,word [bp+6]
		mov	word [bx],dx
		mov	ax,word [bp-2]
		cwd
		mov	cx,7
		idiv	cx
		test	dx,dx
		jne	..@j1912
		jmp	..@j1913
..@j1912:
		mov	bx,word [bp+6]
		inc	word [bx]
..@j1913:
		mov	bx,word [bp+6]
		cmp	word [bx],52
		ja	..@j1914
		jmp	..@j1915
..@j1914:
		mov	ax,word [bp-14]
		mov	word [bp-16],ax
		mov	bx,word [bp+8]
		push	word [bx]
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		test	al,al
		jne	..@j1918
		jmp	..@j1919
..@j1918:
		inc	word [bp-16]
		cmp	word [bp-16],7
		ja	..@j1922
		jmp	..@j1923
..@j1922:
		mov	word [bp-16],1
..@j1923:
..@j1919:
		cmp	word [bp-16],4
		jb	..@j1926
		jmp	..@j1927
..@j1926:
		mov	bx,word [bp+8]
		inc	word [bx]
		mov	bx,word [bp+6]
		mov	word [bx],1
..@j1927:
..@j1915:
..@j1909:
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
EXTERN	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
EXTERN	DATEUTILS_$$_STARTOFAYEAR$WORD$$TDATETIME
EXTERN	SYSUTILS_$$_DAYOFWEEK$TDATETIME$$SMALLINT
EXTERN	DATEUTILS_$$_YEAROF$TDATETIME$$WORD
