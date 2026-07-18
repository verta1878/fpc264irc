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
	GLOBAL CRT_$$_DOSMEMMOVE$WORD$WORD$WORD$WORD$WORD
CRT_$$_DOSMEMMOVE$WORD$WORD$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		mov	es,ax
		mov	di,word [bp+6]
		mov	si,word [bp+10]
		mov	dx,word [bp+4]
		mov	cx,dx
		mov	ax,word [bp+12]
		push	ds
		mov	ds,ax
		shr	cx,1
		jz	..@j7
		rep
		movsw
..@j7:
		and	dl,1
		jz	..@j8
		rep
		movsb
..@j8:
		pop	ds
		mov	sp,bp
		pop	bp
		ret	10
