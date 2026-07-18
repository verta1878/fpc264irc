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
	GLOBAL CONVUTILS_$$_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE
CONVUTILS_$$_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+14]
		call	CONVUTILS_$$_CHECKFAMILY$TCONVFAMILY$$BOOLEAN
		test	al,al
		je	..@j144
		jmp	..@j145
..@j144:
		mov	word [bp-2],-1
		jmp	..@j142
..@j145:
		wait fld	qword [bp+4]
		wait fld1
		wait faddp	st1,st0
		wait fld	tword [_$CONVUTILS$_Ld1]
		wait fcompp
		fstsw	[bp-8]
		mov	ah,byte [bp-7]
		sahf
		jp	..@j152
		ja	..@j150
..@j152:
		jmp	..@j151
..@j150:
		mov	word [bp-2],-1
		jmp	..@j142
..@j151:
		mov	bx,word [TC_$CONVUTILS_$$_THEUNITS]
		test	bx,bx
		je	..@j157
		mov	bx,word [bx-2]
		inc	bx
..@j157:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-6],cx
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		add	ax,1
		adc	dx,0
		mov	word [bp-8],ax
		mov	ax,word TC_$CONVUTILS_$$_THEUNITS
		push	ax
		mov	ax,word INIT_$CONVUTILS_$$_DEF35
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	fpc_dynarray_setlength
		mov	bx,word [TC_$CONVUTILS_$$_THEUNITS]
		mov	ax,word [bp-6]
		mov	si,ax
		mov	ax,12
		mul	si
		mov	si,ax
		lea	ax,[bx+si]
		push	ax
		push	word [bp+12]
		call	fpc_ansistr_assign
		mov	bx,word [TC_$CONVUTILS_$$_THEUNITS]
		mov	ax,word [bp-6]
		mov	si,ax
		mov	ax,12
		mul	si
		mov	si,ax
		lea	di,[bx+si+2]
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [TC_$CONVUTILS_$$_THEUNITS]
		mov	ax,word [bp-6]
		mov	si,ax
		mov	ax,12
		mul	si
		mov	si,ax
		mov	ax,word [bp+14]
		mov	word [bx+si+10],ax
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
..@j142:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	fpc_ansistr_assign
EXTERN	fpc_dynarray_setlength
EXTERN	INIT_$CONVUTILS_$$_DEF35
EXTERN	TC_$CONVUTILS_$$_THEUNITS
EXTERN	_$CONVUTILS$_Ld1
EXTERN	CONVUTILS_$$_CHECKFAMILY$TCONVFAMILY$$BOOLEAN
