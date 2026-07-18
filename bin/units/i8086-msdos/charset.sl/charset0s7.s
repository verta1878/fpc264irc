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
	GLOBAL CHARSET_$$_INITITEMS$PUNICODECHARMAPPING$LONGINT
CHARSET_$$_INITITEMS$PUNICODECHARMAPPING$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-6],0
		mov	word [bp-4],0
		cmp	dx,word [bp-4]
		jl	..@j257
		jg	..@j259
		cmp	ax,word [bp-6]
		jb	..@j257
..@j259:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j258:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	bx,word [bp-2]
		mov	cx,word [TC_$CHARSET$_$INITITEMS$PUNICODECHARMAPPING$LONGINT_$$_INIT_ITEM]
		mov	word [bx],cx
		mov	cx,word [TC_$CHARSET$_$INITITEMS$PUNICODECHARMAPPING$LONGINT_$$_INIT_ITEM+2]
		mov	word [bx+2],cx
		add	word [bp-2],4
		cmp	dx,word [bp-4]
		jg	..@j258
		jl	..@j262
		cmp	ax,word [bp-6]
		ja	..@j258
..@j262:
..@j257:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TC_$CHARSET$_$INITITEMS$PUNICODECHARMAPPING$LONGINT_$$_INIT_ITEM
