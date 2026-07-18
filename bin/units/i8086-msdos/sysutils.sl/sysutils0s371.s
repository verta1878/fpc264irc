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
	GLOBAL SYSUTILS_$$_STRLCOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
SYSUTILS_$$_STRLCOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-4],0
		cmp	word [bp+4],0
		je	..@j12647
		jmp	..@j12648
..@j12647:
		mov	word [bp-2],0
		jmp	..@j12643
..@j12648:
	ALIGN 2
..@j12651:
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	byte [bp-5],al
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	byte [bp-6],al
		cmp	byte [bp-5],0
		je	..@j12658
		jmp	..@j12660
..@j12660:
		cmp	byte [bp-6],0
		je	..@j12658
		jmp	..@j12659
..@j12658:
		jmp	..@j12653
..@j12659:
		inc	word [bp-4]
		mov	al,byte [bp-5]
		cmp	al,byte [bp-6]
		jne	..@j12653
		jmp	..@j12661
..@j12661:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		jge	..@j12653
		jmp	..@j12651
..@j12653:
		mov	al,byte [bp-5]
		mov	ah,0
		mov	dl,byte [bp-6]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
..@j12643:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
