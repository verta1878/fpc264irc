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
	GLOBAL SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING:
		push	bp
		mov	bp,sp
	ALIGN 2
..@j22828:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
		test	al,al
		je	..@j22831
		jmp	..@j22832
..@j22831:
		jmp	..@j22826
..@j22832:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+4]
		je	..@j22830
		jmp	..@j22839
..@j22839:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		cmp	byte [bx+si],32
		jbe	..@j22830
		jmp	..@j22828
..@j22830:
..@j22826:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
