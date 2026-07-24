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
	GLOBAL SYSUTILS_$$_STRTODATEDEF$ANSISTRING$TDATETIME$CHAR$$TDATETIME
SYSUTILS_$$_STRTODATEDEF$ANSISTRING$TDATETIME$CHAR$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+14]
		lea	ax,[bp-8]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$CHAR$$BOOLEAN
		test	al,al
		je	..@j12366
		jmp	..@j12367
..@j12366:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
..@j12367:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$CHAR$$BOOLEAN
