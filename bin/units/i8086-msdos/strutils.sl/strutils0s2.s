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
	GLOBAL STRUTILS_$$__MAKEREPLACEFLAGS$BOOLEAN$BOOLEAN$$TREPLACEFLAGS
STRUTILS_$$__MAKEREPLACEFLAGS$BOOLEAN$BOOLEAN$$TREPLACEFLAGS:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-2],0
		cmp	byte [bp+6],0
		jne	..@j7
		jmp	..@j8
..@j7:
		mov	al,byte [bp-2]
		mov	ah,0
		or	ax,1
		mov	byte [bp-2],al
..@j8:
		cmp	byte [bp+4],0
		jne	..@j11
		jmp	..@j12
..@j11:
		mov	al,byte [bp-2]
		mov	ah,0
		or	ax,2
		mov	byte [bp-2],al
..@j12:
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-1]
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
