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
	GLOBAL SYSTEM_$$_UNICODECHARLENTOSTRING$PUNICODECHAR$SMALLINT$$UNICODESTRING
SYSTEM_$$_UNICODECHARLENTOSTRING$PUNICODECHAR$SMALLINT$$UNICODESTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		call	fpc_unicodestr_setlength
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp+4]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_unicodestr_setlength
