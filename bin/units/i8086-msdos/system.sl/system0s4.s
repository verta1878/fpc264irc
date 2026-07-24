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
	GLOBAL SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE:
		mov	bx,sp
		mov	cx,word [ss:bx+4]
		or	cx,cx
		jle	..@j46
		mov	di,word [ss:bx+6]
		mov	ax,ds
		mov	es,ax
		mov	al,byte [ss:bx+2]
		mov	ah,al
		shr	cx,1
		cld
		rep
		stosw
		adc	cx,cx
		rep
		stosb
..@j46:
		ret	6
