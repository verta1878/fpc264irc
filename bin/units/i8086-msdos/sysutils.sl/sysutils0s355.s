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
	GLOBAL SYSUTILS_$$_REPLACEDATE$TDATETIME$TDATETIME
SYSUTILS_$$_REPLACEDATE$TDATETIME$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,10
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+12]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		mov	word [bp-10],ax
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		mov	si,word [bp-10]
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		mov	di,word [bp+12]
		push	ds
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
