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
	GLOBAL SYSTEM_$$_MOVE$formal$formal$SMALLINT
SYSTEM_$$_MOVE$formal$formal$SMALLINT:
	GLOBAL FPC_MOVE
FPC_MOVE:
		mov	bx,sp
		mov	cx,word [ss:bx+2]
		or	cx,cx
		jle	..@j56
		mov	ax,ds
		mov	es,ax
		mov	si,word [ss:bx+6]
		mov	di,word [ss:bx+4]
		cmp	si,di
		jb	..@j57
		cld
		shr	cx,1
		rep
		movsw
		adc	cx,cx
		rep
		movsb
		jmp	..@j58
..@j57:
		std
		add	si,cx
		add	di,cx
		dec	si
		dec	di
		rep
		movsb
		cld
..@j58:
..@j56:
		ret	6
