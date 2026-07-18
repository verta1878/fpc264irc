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
	GLOBAL SYSUTILS_$$_STRTODATEDEF$SHORTSTRING$TDATETIME$CHAR$$TDATETIME
SYSUTILS_$$_STRTODATEDEF$SHORTSTRING$TDATETIME$CHAR$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_TRYSTRTODATE$SHORTSTRING$TDATETIME$CHAR$$BOOLEAN
		test	al,al
		je	..@j12312
		jmp	..@j12313
..@j12312:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
..@j12313:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSUTILS_$$_TRYSTRTODATE$SHORTSTRING$TDATETIME$CHAR$$BOOLEAN
