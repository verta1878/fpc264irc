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
	GLOBAL CONVUTILS_$$_REGISTERCONVERSIONFAMILY$ANSISTRING$$TCONVFAMILY
CONVUTILS_$$_REGISTERCONVERSIONFAMILY$ANSISTRING$$TCONVFAMILY:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [TC_$CONVUTILS_$$_THEFAMILIES]
		test	bx,bx
		je	..@j88
		mov	bx,word [bx-2]
		inc	bx
..@j88:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-10],cx
		mov	word [bp-8],ax
		mov	dx,word [bp-10]
		mov	ax,word [bp-8]
		cmp	ax,0
		jne	..@j90
		cmp	dx,0
		jne	..@j90
		jmp	..@j89
..@j89:
		mov	word [bp-12],1
		mov	ax,word TC_$CONVUTILS_$$_THEFAMILIES
		push	ax
		mov	ax,word RTTI_$CONVUTILS_$$_DEF36
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	fpc_dynarray_setlength
		mov	ax,word [TC_$CONVUTILS_$$_THEFAMILIES]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	word [bp-2],0
		jmp	..@j107
..@j90:
		mov	word [bp-6],0
		mov	word [bp-4],0
		jmp	..@j111
	ALIGN 2
..@j110:
		add	word [bp-6],1
		adc	word [bp-4],0
..@j111:
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		cmp	ax,word [bp-8]
		jl	..@j113
		jg	..@j112
		cmp	dx,word [bp-10]
		jb	..@j113
		jmp	..@j112
		jmp	..@j112
..@j113:
		push	word [bp+4]
		mov	bx,word [TC_$CONVUTILS_$$_THEFAMILIES]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j110
		cmp	cx,0
		jne	..@j110
		jmp	..@j112
..@j112:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,word [bp-8]
		jne	..@j119
		cmp	ax,word [bp-10]
		jne	..@j119
		jmp	..@j118
		jmp	..@j119
..@j118:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		add	ax,1
		adc	dx,0
		mov	word [bp-12],ax
		mov	ax,word TC_$CONVUTILS_$$_THEFAMILIES
		push	ax
		mov	ax,word RTTI_$CONVUTILS_$$_DEF36
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	fpc_dynarray_setlength
		mov	bx,word [TC_$CONVUTILS_$$_THEFAMILIES]
		mov	ax,word [bp-10]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
..@j119:
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
..@j107:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_ansistr_compare_equal
EXTERN	fpc_ansistr_assign
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$CONVUTILS_$$_DEF36
EXTERN	TC_$CONVUTILS_$$_THEFAMILIES
