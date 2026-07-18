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
	GLOBAL fpc_shortstr_copy
fpc_shortstr_copy:
		push	bp
		mov	bp,sp
		sub	sp,8
		cmp	word [bp+4],0
		jl	..@j3673
		jmp	..@j3674
..@j3673:
		mov	word [bp+4],0
..@j3674:
		cmp	word [bp+6],1
		jg	..@j3677
		jmp	..@j3678
..@j3677:
		dec	word [bp+6]
		jmp	..@j3679
..@j3678:
		mov	word [bp+6],0
..@j3679:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+6]
		jl	..@j3682
		jmp	..@j3683
..@j3682:
		mov	word [bp+4],0
		jmp	..@j3686
..@j3683:
		mov	bx,word [bp+8]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp+6]
		sub	dx,ax
		cmp	dx,word [bp+4]
		jl	..@j3687
		jmp	..@j3688
..@j3687:
		mov	bx,word [bp+8]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp+6]
		sub	dx,ax
		mov	word [bp+4],dx
..@j3688:
..@j3686:
		mov	bx,word [bp+10]
		mov	al,byte [bp+4]
		mov	byte [bx],al
		mov	al,byte [bp+4]
		mov	byte [bp-1],al
		mov	dx,word [bp+10]
		mov	ax,word [bp+6]
		inc	ax
		mov	byte [bp-2],al
		mov	ax,word [bp+8]
		mov	word [bp-8],ax
		mov	al,byte [bp-2]
		mov	byte [bp-6],al
		mov	byte [bp-5],0
		mov	bx,word [bp-8]
		mov	si,word [bp-6]
		lea	ax,[bx+si]
		push	ax
		mov	word [bp-4],dx
		mov	bx,word [bp-4]
		lea	ax,[bx+1]
		push	ax
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
