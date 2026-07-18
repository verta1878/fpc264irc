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
	GLOBAL SYSUTILS_$$_STRCOMP$PCHAR$PCHAR$$SMALLINT
SYSUTILS_$$_STRCOMP$PCHAR$PCHAR$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-4],0
		jmp	..@j12608
	ALIGN 2
..@j12607:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		je	..@j12610
		jmp	..@j12612
..@j12612:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		je	..@j12610
		jmp	..@j12611
..@j12610:
		jmp	..@j12609
..@j12611:
		inc	word [bp-4]
..@j12608:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	di,word [bp-4]
		mov	al,byte [bx+si]
		mov	bx,word [bp-6]
		cmp	al,byte [bx+di]
		je	..@j12607
		jmp	..@j12609
..@j12609:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	dl,byte [bx+si]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
