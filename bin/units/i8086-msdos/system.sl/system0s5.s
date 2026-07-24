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
	GLOBAL SYSTEM_$$_FILLWORD$formal$SMALLINT$WORD
SYSTEM_$$_FILLWORD$formal$SMALLINT$WORD:
		mov	bx,sp
		mov	cx,word [ss:bx+4]
		or	cx,cx
		jle	..@j49
		mov	di,word [ss:bx+6]
		mov	ax,ds
		mov	es,ax
		mov	ax,word [ss:bx+2]
		cld
		rep
		stosw
..@j49:
		ret	6
