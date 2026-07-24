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
	GLOBAL SYSUTILS_$$_DATETIMETOSYSTEMTIME$TDATETIME$TSYSTEMTIME
SYSUTILS_$$_DATETIMETOSYSTEMTIME$TDATETIME$TSYSTEMTIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+2]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+4]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+6]
		push	ax
		call	SYSUTILS_$$_DECODEDATEFULLY$TDATETIME$WORD$WORD$WORD$WORD$$BOOLEAN
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+10]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+12]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+14]
		push	ax
		call	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
		mov	bx,word [bp+4]
		dec	word [bx+6]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
EXTERN	SYSUTILS_$$_DECODEDATEFULLY$TDATETIME$WORD$WORD$WORD$WORD$$BOOLEAN
