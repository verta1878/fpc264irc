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
	GLOBAL GETOPTS_$$_GETLONGOPTS$SHORTSTRING$POPTION$LONGINT$$CHAR
GETOPTS_$$_GETLONGOPTS$SHORTSTRING$POPTION$LONGINT$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	dx,word [bp+8]
		lea	ax,[bp-257]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-257]
		push	ax
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,1
		push	ax
		call	GETOPTS_$$_INTERNAL_GETOPT$SHORTSTRING$POPTION$POINTER$BOOLEAN$$CHAR
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	GETOPTS_$$_INTERNAL_GETOPT$SHORTSTRING$POPTION$POINTER$BOOLEAN$$CHAR
EXTERN	fpc_shortstr_to_shortstr
