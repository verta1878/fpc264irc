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
	GLOBAL fpc_shortstr_to_shortstr
fpc_shortstr_to_shortstr:
	GLOBAL FPC_SHORTSTR_TO_SHORTSTR
FPC_SHORTSTR_TO_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	ah,0
		cmp	ax,word [bp+6]
		jg	..@j919
		jmp	..@j920
..@j919:
		mov	al,byte [bp+6]
		mov	byte [bp-1],al
..@j920:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	al,byte [bp-1]
		mov	ah,0
		inc	ax
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+8]
		mov	al,byte [bp-1]
		mov	byte [bx],al
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
