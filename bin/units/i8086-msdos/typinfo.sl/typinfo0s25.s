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
	GLOBAL TYPINFO_$$_INSERTPROP$PPROPLIST$PPROPINFO$LONGINT
TYPINFO_$$_INSERTPROP$PPROPLIST$PPROPINFO$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j648
	ALIGN 2
..@j647:
		add	word [bp-4],1
		adc	word [bp-2],0
..@j648:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,word [bp+6]
		jl	..@j650
		jg	..@j649
		cmp	ax,word [bp+4]
		jb	..@j650
		jmp	..@j649
		jmp	..@j649
..@j650:
		mov	bx,word [bp+8]
		lea	ax,[bx+17]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		lea	ax,[bx+17]
		push	ax
		call	fpc_shortstr_compare
		cmp	dx,0
		jg	..@j647
		jl	..@j649
		cmp	ax,0
		ja	..@j647
		jmp	..@j649
..@j649:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,word [bp+6]
		jl	..@j655
		jg	..@j656
		cmp	ax,word [bp+4]
		jb	..@j655
		jmp	..@j656
		jmp	..@j656
..@j655:
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	bx,word [bp-4]
		mov	cx,word [bp-2]
		sub	ax,bx
		sbb	dx,cx
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j656:
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+8]
		mov	word [bx+si],ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_shortstr_compare
