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
	GLOBAL FGL$_$TFPSLIST_$__$$_GETFIRST$$POINTER
FGL$_$TFPSLIST_$__$$_GETFIRST$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx+4],0
		je	..@j512
		jmp	..@j513
..@j512:
		mov	word [bp-2],0
		jmp	..@j516
..@j513:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
..@j516:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
