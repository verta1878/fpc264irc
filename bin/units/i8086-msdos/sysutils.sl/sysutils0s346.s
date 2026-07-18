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
	GLOBAL SYSUTILS_$$_STRTODATETIMEDEF$SHORTSTRING$TDATETIME$$TDATETIME
SYSUTILS_$$_STRTODATETIMEDEF$SHORTSTRING$TDATETIME$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+12]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	SYSUTILS_$$_TRYSTRTODATETIME$SHORTSTRING$TDATETIME$$BOOLEAN
		test	al,al
		je	..@j12302
		jmp	..@j12303
..@j12302:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j12303:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_TRYSTRTODATETIME$SHORTSTRING$TDATETIME$$BOOLEAN
