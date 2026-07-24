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
	GLOBAL CHARSET_$$_REGISTERBINARYMAPPING$SHORTSTRING$SHORTSTRING$$BOOLEAN
CHARSET_$$_REGISTERBINARYMAPPING$SHORTSTRING$SHORTSTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	byte [bp-1],0
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	CHARSET_$$_LOADBINARYUNICODEMAPPING$SHORTSTRING$SHORTSTRING$$PUNICODEMAP
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j675
		jmp	..@j676
..@j675:
		jmp	..@j665
..@j676:
		push	word [bp-4]
		call	CHARSET_$$_REGISTERMAPPING$PUNICODEMAP
		mov	byte [bp-1],1
..@j665:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CHARSET_$$_REGISTERMAPPING$PUNICODEMAP
EXTERN	CHARSET_$$_LOADBINARYUNICODEMAPPING$SHORTSTRING$SHORTSTRING$$PUNICODEMAP
