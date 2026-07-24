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
	GLOBAL DATEUTILS_$$_ISSAMEMONTH$TDATETIME$TDATETIME$$BOOLEAN
DATEUTILS_$$_ISSAMEMONTH$TDATETIME$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_YEAROF$TDATETIME$$WORD
		mov	word [bp-6],ax
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_YEAROF$TDATETIME$$WORD
		cmp	word [bp-6],ax
		mov	al,0
		jne	..@j226
		inc	ax
..@j226:
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		jne	..@j229
		jmp	..@j228
..@j229:
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_MONTHOF$TDATETIME$$WORD
		mov	word [bp-4],ax
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_MONTHOF$TDATETIME$$WORD
		cmp	word [bp-4],ax
		je	..@j227
		jmp	..@j228
..@j227:
		mov	byte [bp-1],1
		jmp	..@j234
..@j228:
		mov	byte [bp-1],0
..@j234:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	DATEUTILS_$$_MONTHOF$TDATETIME$$WORD
EXTERN	DATEUTILS_$$_YEAROF$TDATETIME$$WORD
