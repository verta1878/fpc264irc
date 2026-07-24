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
	GLOBAL FGL$_$TFPSLIST_$__$$_QUICKSORT$SMALLINT$SMALLINT$TFPSLISTCOMPAREFUNC
FGL$_$TFPSLIST_$__$$_QUICKSORT$SMALLINT$SMALLINT$TFPSLISTCOMPAREFUNC:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-12],ax
		mov	ax,word [bx+2]
		mov	word [bp-10],ax
	ALIGN 2
..@j793:
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	ax,word [bp+8]
		cwd
		mov	cx,ax
		mov	bx,dx
		mov	ax,word [bp+6]
		cwd
		add	ax,cx
		adc	dx,bx
		shr	dx,1
		rcr	ax,1
		mov	word [bp-6],ax
	ALIGN 2
..@j802:
		mov	bx,word [bp+10]
		mov	ax,word [bp-6]
		mul	word [bx+8]
		mov	bx,word [bp+10]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-8],dx
		jmp	..@j810
	ALIGN 2
..@j809:
		inc	word [bp-2]
..@j810:
		push	word [bp-10]
		push	word [bp-8]
		mov	bx,word [bp+10]
		mov	ax,word [bp-2]
		mul	word [bx+8]
		mov	bx,word [bp+10]
		mov	dx,word [bx+2]
		add	dx,ax
		push	dx
		mov	ax,word [bp-12]
		call	ax
		cmp	ax,0
		jg	..@j809
		jmp	..@j811
..@j811:
		jmp	..@j821
	ALIGN 2
..@j820:
		dec	word [bp-4]
..@j821:
		push	word [bp-10]
		push	word [bp-8]
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mul	word [bx+8]
		mov	bx,word [bp+10]
		mov	dx,word [bx+2]
		add	dx,ax
		push	dx
		mov	ax,word [bp-12]
		call	ax
		cmp	ax,0
		jl	..@j820
		jmp	..@j822
..@j822:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jle	..@j831
		jmp	..@j832
..@j831:
		push	word [bp+10]
		push	word [bp-2]
		push	word [bp-4]
		call	FGL$_$TFPSLIST_$__$$_INTERNALEXCHANGE$SMALLINT$SMALLINT
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		je	..@j839
		jmp	..@j840
..@j839:
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		jmp	..@j843
..@j840:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		je	..@j844
		jmp	..@j845
..@j844:
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
..@j845:
..@j843:
		inc	word [bp-2]
		dec	word [bp-4]
..@j832:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jg	..@j804
		jmp	..@j802
..@j804:
		mov	ax,word [bp+8]
		cmp	ax,word [bp-4]
		jl	..@j848
		jmp	..@j849
..@j848:
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp-4]
		lea	ax,[bp-12]
		push	ax
		call	FGL$_$TFPSLIST_$__$$_QUICKSORT$SMALLINT$SMALLINT$TFPSLISTCOMPAREFUNC
..@j849:
		mov	ax,word [bp-2]
		mov	word [bp+8],ax
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jge	..@j795
		jmp	..@j793
..@j795:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FGL$_$TFPSLIST_$__$$_INTERNALEXCHANGE$SMALLINT$SMALLINT
