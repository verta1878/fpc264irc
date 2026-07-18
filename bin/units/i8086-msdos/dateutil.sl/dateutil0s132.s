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
	GLOBAL DATEUTILS_$$_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$WORD$$BOOLEAN
DATEUTILS_$$_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$WORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,18
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+4]
		call	DATEUTILS_$$_ISVALIDDATEWEEK$WORD$WORD$WORD$$BOOLEAN
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		jne	..@j1940
		jmp	..@j1941
..@j1940:
		push	word [bp+10]
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
		wait fstp	qword [bp-14]
		DB	09bh
		mov	ax,0
		push	ax
		mov	ax,7
		push	ax
		mov	ax,word [bp+8]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		push	dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		wait fild	dword [bp-18]
		wait fld	qword [bp-14]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		mov	si,word [bp+6]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
		mov	word [bp-4],ax
		mov	ax,word [bp+4]
		mov	dx,0
		mov	cx,word [bp-4]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-6],ax
		cmp	word [bp-4],4
		ja	..@j1962
		jmp	..@j1963
..@j1962:
		add	word [bp-6],7
..@j1963:
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		cwd
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		wait fild	dword [bp-10]
		wait fadd	qword [bx]
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
..@j1941:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
EXTERN	fpc_mul_longint
EXTERN	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
EXTERN	DATEUTILS_$$_ISVALIDDATEWEEK$WORD$WORD$WORD$$BOOLEAN
