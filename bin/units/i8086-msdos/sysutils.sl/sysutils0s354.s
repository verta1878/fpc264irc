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
	GLOBAL SYSUTILS_$$_REPLACETIME$TDATETIME$TDATETIME
SYSUTILS_$$_REPLACETIME$TDATETIME$TDATETIME:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+12]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		mov	si,ax
		cld
		mov	cx,4
		rep
		movsw
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
		mov	bx,word [bp+12]
		wait fstp	qword [bx]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
