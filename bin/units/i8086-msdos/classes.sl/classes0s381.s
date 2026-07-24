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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_INTERNALCLEAR$SMALLINT$BOOLEAN
CLASSES$_$TSTRINGLIST_$__$$_INTERNALCLEAR$SMALLINT$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+8]
		mov	ax,word [bx+22]
		cmp	ax,word [bp+6]
		jg	..@j8909
		jmp	..@j8910
..@j8909:
		mov	bx,word [bp+8]
		cmp	byte [bx+38],0
		jne	..@j8911
		jmp	..@j8912
..@j8911:
		mov	bx,word [bp+8]
		mov	ax,word [bx+22]
		dec	ax
		mov	word [bp-6],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j8916
		dec	word [bp-2]
	ALIGN 2
..@j8917:
		inc	word [bp-2]
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		lea	ax,[bx+si]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		lea	ax,[bx+si+2]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j8917
..@j8916:
		jmp	..@j8924
..@j8912:
		mov	bx,word [bp+8]
		mov	ax,word [bx+22]
		dec	ax
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j8928
		dec	word [bp-2]
	ALIGN 2
..@j8929:
		inc	word [bp-2]
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		lea	ax,[bx+si]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j8929
..@j8928:
..@j8924:
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mov	word [bx+22],ax
..@j8910:
		cmp	byte [bp+4],0
		je	..@j8936
		jmp	..@j8937
..@j8936:
		push	word [bp+8]
		mov	ax,0
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+74]
		call	ax
..@j8937:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
EXTERN	fpc_ansistr_assign
