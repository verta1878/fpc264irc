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
	GLOBAL SYSTEM_$$_STRINGTOPPCHAR$ANSISTRING$SMALLINT$$PPCHAR
SYSTEM_$$_STRINGTOPPCHAR$ANSISTRING$SMALLINT$$PPCHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		test	ax,ax
		jne	..@j18175
		mov	ax,word FPC_EMPTYCHAR
..@j18175:
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR
EXTERN	FPC_EMPTYCHAR
