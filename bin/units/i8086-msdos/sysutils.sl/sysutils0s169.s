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
	GLOBAL SYSUTILS_$$_STRTOFLOATDEF$ANSISTRING$EXTENDED$TFORMATSETTINGS$$EXTENDED
SYSUTILS_$$_STRTOFLOATDEF$ANSISTRING$EXTENDED$TFORMATSETTINGS$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+16]
		lea	ax,[bp-10]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
		test	al,al
		je	..@j5415
		jmp	..@j5416
..@j5415:
		lea	di,[bp-10]
		push	ss
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,5
		rep
		movsw
..@j5416:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	SYSUTILS_$$_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
