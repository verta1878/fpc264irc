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
	GLOBAL SYSUTILS_$$_FILEDATETODATETIME$LONGINT$$TDATETIME
SYSUTILS_$$_FILEDATETODATETIME$LONGINT$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	ax,dx
		mov	dx,0
		mov	word [bp-10],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	dx,0
		mov	word [bp-12],ax
		mov	ax,word [bp-10]
		mov	cl,9
		shr	ax,cl
		add	ax,1980
		push	ax
		mov	ax,word [bp-10]
		mov	cl,5
		shr	ax,cl
		and	ax,15
		push	ax
		mov	ax,word [bp-10]
		and	ax,31
		push	ax
		call	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		mov	ax,word [bp-12]
		mov	cl,11
		shr	ax,cl
		push	ax
		mov	ax,word [bp-12]
		mov	cl,5
		shr	ax,cl
		and	ax,63
		push	ax
		mov	ax,word [bp-12]
		and	ax,31
		shl	ax,1
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
EXTERN	SYSUTILS_$$_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
EXTERN	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
