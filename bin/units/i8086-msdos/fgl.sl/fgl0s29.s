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
	GLOBAL FGL$_$TFPSLIST_$__$$_SETLAST$POINTER
FGL$_$TFPSLIST_$__$$_SETLAST$POINTER:
		push	bp
		mov	bp,sp
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		dec	ax
		push	ax
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_PUT$SMALLINT$POINTER
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSLIST_$__$$_PUT$SMALLINT$POINTER
