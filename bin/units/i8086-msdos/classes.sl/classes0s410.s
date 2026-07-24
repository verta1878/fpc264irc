BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_SORT
CLASSES$_$TSTRINGLIST_$__$$_SORT:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		mov	ax,word CLASSES_$$_STRINGLISTANSICOMPARE$TSTRINGLIST$SMALLINT$SMALLINT$$SMALLINT
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+136]
		call	ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES_$$_STRINGLISTANSICOMPARE$TSTRINGLIST$SMALLINT$SMALLINT$$SMALLINT
