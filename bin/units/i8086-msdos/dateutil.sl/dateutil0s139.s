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
	GLOBAL DATEUTILS_$$_TRYENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_$$_TRYENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		call	DATEUTILS_$$_ISVALIDDATEMONTHWEEK$WORD$WORD$WORD$WORD$$BOOLEAN
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		jne	..@j2131
		jmp	..@j2132
..@j2131:
		push	word [bp+12]
		push	word [bp+10]
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
		mov	bx,word [bp+4]
		wait fstp	qword [bx]
		DB	09bh
		mov	ax,word [bp+8]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		push	dx
		push	ax
		mov	ax,0
		push	ax
		mov	ax,7
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cx,word [bp+6]
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		sub	cx,1
		sbb	bx,0
		mov	word [bp-6],cx
		mov	si,word [bp+4]
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
		mov	ax,word [bp-4]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		sub	word [bp-6],ax
		mov	ax,word [bp-4]
		sub	ax,5
		cmp	ax,3
		jb	..@j2155
..@j2155:
		jc	..@j2153
		jmp	..@j2154
..@j2153:
		add	word [bp-6],7
..@j2154:
		mov	bx,word [bp+4]
		mov	ax,word [bp-6]
		cwd
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		wait fild	dword [bp-10]
		wait fadd	qword [bx]
		mov	bx,word [bp+4]
		wait fstp	qword [bx]
		DB	09bh
..@j2132:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
EXTERN	fpc_mul_longint
EXTERN	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
EXTERN	DATEUTILS_$$_ISVALIDDATEMONTHWEEK$WORD$WORD$WORD$WORD$$BOOLEAN
