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
	GLOBAL VARUTILS_$$_LSTRTODATE$POINTER$$TDATETIME
VARUTILS_$$_LSTRTODATE$POINTER$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+4]
		lea	ax,[bp-8]
		push	ax
		call	SYSUTILS_$$_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN
		test	al,al
		je	..@j1669
		jmp	..@j1670
..@j1669:
		mov	ax,256
		push	ax
		mov	ax,7
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1670:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	SYSUTILS_$$_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN
