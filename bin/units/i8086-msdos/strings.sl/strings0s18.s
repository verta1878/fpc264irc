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
	GLOBAL STRINGS_$$_STRLCAT$PCHAR$PCHAR$SMALLINT$$PCHAR
STRINGS_$$_STRLCAT$PCHAR$PCHAR$SMALLINT$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+8]
		call	STRINGS_$$_STREND$PCHAR$$PCHAR
		mov	word [bp-4],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp+8]
		sub	ax,dx
		sub	word [bp+4],ax
		cmp	word [bp+4],0
		jg	..@j307
		jmp	..@j308
..@j307:
		push	word [bp-4]
		push	word [bp+6]
		push	word [bp+4]
		call	STRINGS_$$_STRLCOPY$PCHAR$PCHAR$SMALLINT$$PCHAR
..@j308:
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	STRINGS_$$_STRLCOPY$PCHAR$PCHAR$SMALLINT$$PCHAR
EXTERN	STRINGS_$$_STREND$PCHAR$$PCHAR
