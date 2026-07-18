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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_GROW
CLASSES$_$TSTRINGLIST_$__$$_GROW:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx+24]
		mov	word [bp-2],ax
		cmp	word [bp-2],256
		jge	..@j8890
		jmp	..@j8891
..@j8890:
		mov	dx,word [bp-2]
		test	dx,dx
		jns	..@j8894
		add	dx,3
..@j8894:
		mov	cl,2
		sar	dx,cl
		mov	ax,word [bp-2]
		add	ax,dx
		mov	word [bp-2],ax
		jmp	..@j8895
..@j8891:
		cmp	word [bp-2],0
		je	..@j8896
		jmp	..@j8897
..@j8896:
		mov	word [bp-2],4
		jmp	..@j8900
..@j8897:
		mov	ax,word [bp-2]
		mov	cl,2
		shl	ax,cl
		mov	word [bp-2],ax
..@j8900:
..@j8895:
		push	word [bp+4]
		push	word [bp-2]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+74]
		call	ax
		mov	sp,bp
		pop	bp
		ret	2
