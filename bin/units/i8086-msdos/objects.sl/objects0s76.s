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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_FREEALL
OBJECTS$_$TCOLLECTION_$__$$_FREEALL:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		cmp	word [bp-2],0
		jl	..@j1861
		jg	..@j1863
		cmp	word [bp-4],0
		jb	..@j1861
..@j1863:
		add	word [bp-4],1
		adc	word [bp-2],0
	ALIGN 2
..@j1862:
		sub	word [bp-4],1
		sbb	word [bp-2],0
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+14]
		call	ax
		cmp	word [bp-2],0
		jg	..@j1862
		jl	..@j1872
		cmp	word [bp-4],0
		ja	..@j1862
..@j1872:
..@j1861:
		mov	bx,word [bp+4]
		mov	word [bx+4],0
		mov	word [bx+6],0
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
