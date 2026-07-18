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
	GLOBAL CONVUTILS_$$_GETCONVTYPES$TCONVFAMILY$TCONVTYPEARRAY
CONVUTILS_$$_GETCONVTYPES$TCONVFAMILY$TCONVTYPEARRAY:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bp-6],0
		mov	di,word [TC_$CONVUTILS_$$_THEUNITS]
		test	di,di
		je	..@j43
		mov	di,word [di-2]
		inc	di
..@j43:
		dec	di
		mov	word [bp-2],0
		cmp	di,word [bp-2]
		jl	..@j45
		dec	word [bp-2]
	ALIGN 2
..@j46:
		inc	word [bp-2]
		mov	bx,word [TC_$CONVUTILS_$$_THEUNITS]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	ax,12
		mul	si
		mov	si,ax
		mov	ax,word [bx+si+10]
		cmp	ax,word [bp+6]
		je	..@j47
		jmp	..@j48
..@j47:
		inc	word [bp-6]
..@j48:
		cmp	di,word [bp-2]
		jg	..@j46
..@j45:
		mov	ax,word [bp-6]
		mov	word [bp-8],ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word RTTI_$CONVUTILS_$$_TCONVTYPEARRAY
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	fpc_dynarray_setlength
		mov	word [bp-4],0
		mov	bx,word [TC_$CONVUTILS_$$_THEUNITS]
		test	bx,bx
		je	..@j63
		mov	bx,word [bx-2]
		inc	bx
..@j63:
		dec	bx
		mov	cx,bx
		mov	word [bp-2],0
		cmp	cx,word [bp-2]
		jl	..@j65
		dec	word [bp-2]
	ALIGN 2
..@j66:
		inc	word [bp-2]
		mov	bx,word [TC_$CONVUTILS_$$_THEUNITS]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	ax,12
		mul	si
		mov	si,ax
		mov	ax,word [bx+si+10]
		cmp	ax,word [bp+6]
		je	..@j67
		jmp	..@j68
..@j67:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-2]
		mov	word [bx+si],ax
		inc	word [bp-4]
..@j68:
		cmp	cx,word [bp-2]
		jg	..@j66
..@j65:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$CONVUTILS_$$_TCONVTYPEARRAY
EXTERN	TC_$CONVUTILS_$$_THEUNITS
