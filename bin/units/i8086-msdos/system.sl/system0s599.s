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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal
SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal:
		push	bp
		mov	bp,sp
		sub	sp,278
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-270],ax
		jmp	..@j14909
	ALIGN 2
..@j14908:
		mov	bx,word [bp-270]
		mov	ax,word [bx+22]
		mov	word [bp-268],ax
		cmp	word [bp-268],0
		jne	..@j14915
		jmp	..@j14914
..@j14915:
		mov	bx,word [bp-268]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,0
		jne	..@j14913
		cmp	dx,0
		jne	..@j14913
		jmp	..@j14914
..@j14913:
		mov	bx,word [bp-268]
		mov	ax,word [bx]
		mov	word [bp-260],ax
		mov	ax,word [bx+2]
		mov	word [bp-258],ax
		mov	bx,word [bp-268]
		lea	ax,[bx+4]
		mov	word [bp-266],ax
		jmp	..@j14920
..@j14914:
		mov	word [bp-260],0
		mov	word [bp-258],0
..@j14920:
		mov	ax,word [bp-260]
		mov	dx,word [bp-258]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-278],ax
		mov	word [bp-276],dx
		mov	word [bp-264],0
		mov	word [bp-262],0
		mov	ax,word [bp-276]
		cmp	ax,word [bp-262]
		jl	..@j14926
		jg	..@j14928
		mov	ax,word [bp-278]
		cmp	ax,word [bp-264]
		jb	..@j14926
..@j14928:
		sub	word [bp-264],1
		sbb	word [bp-262],0
	ALIGN 2
..@j14927:
		add	word [bp-264],1
		adc	word [bp-262],0
		lea	ax,[bp-256]
		push	ax
		mov	bx,word [bp-266]
		mov	ax,word [bp-264]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		push	ax
		call	fpc_shortstr_compare_equal
		cmp	dx,0
		jne	..@j14930
		cmp	ax,0
		jne	..@j14930
		jmp	..@j14929
..@j14929:
		mov	bx,word [bp-266]
		mov	ax,word [bp-264]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si+2]
		mov	word [bp-274],ax
		mov	ax,word [bp+6]
		mov	word [bp-272],ax
		push	word [bp-272]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-274]
		call	ax
		jmp	..@j14896
..@j14930:
		mov	ax,word [bp-276]
		cmp	ax,word [bp-262]
		jg	..@j14927
		jl	..@j14943
		mov	ax,word [bp-278]
		cmp	ax,word [bp-264]
		ja	..@j14927
..@j14943:
..@j14926:
		mov	bx,word [bp-270]
		mov	ax,word [bx+4]
		mov	word [bp-270],ax
..@j14909:
		cmp	word [bp-270],0
		jne	..@j14908
		jmp	..@j14910
..@j14910:
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+38]
		call	ax
..@j14896:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_shortstr_compare_equal
EXTERN	fpc_shortstr_to_shortstr
