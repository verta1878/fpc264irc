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
	GLOBAL CONVUTILS_$$_GETCONVFAMILIES$TCONVFAMILYARRAY
CONVUTILS_$$_GETCONVFAMILIES$TCONVFAMILYARRAY:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	bx,word [TC_$CONVUTILS_$$_THEFAMILIES]
		test	bx,bx
		je	..@j20
		mov	bx,word [bx-2]
		inc	bx
..@j20:
		mov	word [bp-4],bx
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word RTTI_$CONVUTILS_$$_TCONVFAMILYARRAY
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	fpc_dynarray_setlength
		mov	di,word [TC_$CONVUTILS_$$_THEFAMILIES]
		test	di,di
		je	..@j31
		mov	di,word [di-2]
		inc	di
..@j31:
		dec	di
		mov	word [bp-2],0
		cmp	di,word [bp-2]
		jl	..@j33
		dec	word [bp-2]
	ALIGN 2
..@j34:
		inc	word [bp-2]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-2]
		mov	word [bx+si],ax
		cmp	di,word [bp-2]
		jg	..@j34
..@j33:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$CONVUTILS_$$_TCONVFAMILYARRAY
EXTERN	TC_$CONVUTILS_$$_THEFAMILIES
