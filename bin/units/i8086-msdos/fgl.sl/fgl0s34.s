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
	GLOBAL FGL$_$TFPSLIST_$__$$_SORT$TFPSLISTCOMPAREFUNC
FGL$_$TFPSLIST_$__$$_SORT$TFPSLISTCOMPAREFUNC:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		je	..@j862
		jmp	..@j864
..@j864:
		mov	bx,word [bp+6]
		cmp	word [bx+4],2
		jl	..@j862
		jmp	..@j863
..@j862:
		jmp	..@j860
..@j863:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		dec	ax
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	FGL$_$TFPSLIST_$__$$_QUICKSORT$SMALLINT$SMALLINT$TFPSLISTCOMPAREFUNC
..@j860:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSLIST_$__$$_QUICKSORT$SMALLINT$SMALLINT$TFPSLISTCOMPAREFUNC
