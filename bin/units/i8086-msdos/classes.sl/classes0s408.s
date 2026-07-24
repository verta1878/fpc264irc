BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_CUSTOMSORT$TSTRINGLISTSORTCOMPARE
CLASSES$_$TSTRINGLIST_$__$$_CUSTOMSORT$TSTRINGLISTSORTCOMPARE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		cmp	byte [bx+37],0
		jne	..@j9599
		jmp	..@j9600
..@j9600:
		mov	bx,word [bp+6]
		cmp	word [bx+39],2
		jne	..@j9599
		jmp	..@j9598
..@j9599:
		mov	bx,word [bp+6]
		cmp	word [bx+22],1
		jg	..@j9597
		jmp	..@j9598
..@j9597:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+124]
		call	ax
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+22]
		dec	ax
		push	ax
		push	word [bp+4]
		call	CLASSES$_$TSTRINGLIST_$__$$_QUICKSORT$SMALLINT$SMALLINT$TSTRINGLISTSORTCOMPARE
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+122]
		call	ax
..@j9598:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTRINGLIST_$__$$_QUICKSORT$SMALLINT$SMALLINT$TSTRINGLISTSORTCOMPARE
