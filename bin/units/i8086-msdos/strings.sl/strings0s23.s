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
	GLOBAL STRINGS_$$_STRALLOC$SMALLINT$$PCHAR
STRINGS_$$_STRALLOC$SMALLINT$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
