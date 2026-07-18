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
	GLOBAL DATEUTILS_$$_TRYENCODEDATEDAY$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_$$_TRYENCODEDATEDAY$WORD$WORD$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		cmp	word [bp+6],0
		jne	..@j2014
		jmp	..@j2013
..@j2014:
		push	word [bp+8]
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		mov	ah,0
		mov	bx,ax
		shl	bx,1
		mov	ax,word [bp+6]
		cmp	ax,word [TC_$DATEUTILS_$$_DAYSPERYEAR+bx]
		jbe	..@j2012
		jmp	..@j2013
..@j2012:
		mov	byte [bp-1],1
		jmp	..@j2017
..@j2013:
		mov	byte [bp-1],0
..@j2017:
		cmp	byte [bp-1],0
		jne	..@j2018
		jmp	..@j2019
..@j2018:
		push	word [bp+8]
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
		mov	ax,word [bp+6]
		mov	dx,0
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		wait fild	dword [bp-6]
		wait faddp	st1,st0
		wait fld1
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		wait fstp	qword [bx]
		DB	09bh
..@j2019:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
EXTERN	TC_$DATEUTILS_$$_DAYSPERYEAR
EXTERN	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
