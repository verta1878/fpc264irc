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
	GLOBAL DOS_$$_CHARINSET$WIDECHAR$TFEXPANDSYSCHARSET$$BOOLEAN
DOS_$$_CHARINSET$WIDECHAR$TFEXPANDSYSCHARSET$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+6],255
		jbe	..@j195
		jmp	..@j194
..@j195:
		mov	bx,word [bp+4]
		mov	al,byte [bp+6]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bx+si],ax
		jne	..@j193
		jmp	..@j194
..@j193:
		mov	byte [bp-1],1
		jmp	..@j196
..@j194:
		mov	byte [bp-1],0
..@j196:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
