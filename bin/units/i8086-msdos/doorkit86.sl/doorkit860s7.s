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
	GLOBAL DOORKIT86_$$_FOSSILWRITESTR$WORD$SHORTSTRING
DOORKIT86_$$_FOSSILWRITESTR$WORD$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,262
		mov	dx,word [bp+4]
		lea	ax,[bp-257]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		mov	al,byte [bp-257]
		mov	byte [bp-262],al
		mov	byte [bp-1],1
		mov	al,byte [bp-262]
		cmp	al,byte [bp-1]
		jb	..@j67
		dec	byte [bp-1]
	ALIGN 2
..@j68:
		inc	byte [bp-1]
		push	word [bp+6]
		mov	al,byte [bp-1]
		mov	byte [bp-260],al
		mov	byte [bp-259],0
		mov	si,word [bp-260]
		mov	al,byte [bp+si-257]
		mov	ah,0
		push	ax
		call	DOORKIT86_$$_FOSSILWRITE$WORD$CHAR
		mov	al,byte [bp-262]
		cmp	al,byte [bp-1]
		ja	..@j68
..@j67:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	DOORKIT86_$$_FOSSILWRITE$WORD$CHAR
EXTERN	fpc_shortstr_to_shortstr
