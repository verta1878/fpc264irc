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
	GLOBAL SYSUTILS_$$_STRTOCURRDEF$ANSISTRING$CURRENCY$$CURRENCY
SYSUTILS_$$_STRTOCURRDEF$ANSISTRING$CURRENCY$$CURRENCY:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+12]
		lea	ax,[bp-8]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$$BOOLEAN
		test	al,al
		je	..@j7333
		jmp	..@j7334
..@j7333:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j7334:
		wait fild	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$$BOOLEAN
