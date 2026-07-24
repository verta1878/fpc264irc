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
	GLOBAL DATEUTILS_$$_ISTODAY$TDATETIME$$BOOLEAN
DATEUTILS_$$_ISTODAY$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_DATE$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	DATEUTILS_$$_ISSAMEDAY$TDATETIME$TDATETIME$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	DATEUTILS_$$_ISSAMEDAY$TDATETIME$TDATETIME$$BOOLEAN
EXTERN	SYSUTILS_$$_DATE$$TDATETIME
