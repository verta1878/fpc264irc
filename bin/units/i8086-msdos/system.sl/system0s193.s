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
	GLOBAL SYSTEM_$$_assign$REAL48$$DOUBLE
SYSTEM_$$_assign$REAL48$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-14],ax
		mov	ax,word [bx+2]
		mov	word [bp-12],ax
		mov	ax,word [bx+4]
		mov	word [bp-10],ax
		lea	ax,[bp-14]
		push	ax
		call	SYSTEM_$$_REAL2DOUBLE$REAL48$$DOUBLE
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_REAL2DOUBLE$REAL48$$DOUBLE
