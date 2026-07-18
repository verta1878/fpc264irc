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
	GLOBAL FGL$_$TFPSLIST_$__$$_GETLAST$$POINTER
FGL$_$TFPSLIST_$__$$_GETLAST$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		cmp	word [bx+4],0
		je	..@j606
		jmp	..@j607
..@j606:
		mov	word [bp-2],0
		jmp	..@j610
..@j607:
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mul	word [bx+8]
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-2],dx
..@j610:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
