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
	GLOBAL CLASSES$_$TBITS_$__$$_FINDPREVBIT$$LONGINT
CLASSES$_$TBITS_$__$$_FINDPREVBIT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		mov	bx,word [bp+4]
		mov	dx,word [bx+12]
		mov	ax,word [bx+14]
		cmp	ax,-1
		jg	..@j603
		jl	..@j604
		cmp	dx,-1
		ja	..@j603
		jmp	..@j604
..@j603:
		mov	bx,word [bp+4]
		mov	ax,word [bx+12]
		mov	dx,word [bx+14]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		cmp	word [bp-6],0
		jl	..@j606
		jg	..@j608
		cmp	word [bp-8],0
		jb	..@j606
..@j608:
		add	word [bp-8],1
		adc	word [bp-6],0
	ALIGN 2
..@j607:
		sub	word [bp-8],1
		sbb	word [bp-6],0
		push	word [bp+4]
		push	word [bp-6]
		push	word [bp-8]
		call	CLASSES$_$TBITS_$__$$_GET$LONGINT$$BOOLEAN
		mov	bx,word [bp+4]
		cmp	al,byte [bx+16]
		je	..@j609
		jmp	..@j610
..@j609:
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
		jmp	..@j606
..@j610:
		cmp	word [bp-6],0
		jg	..@j607
		jl	..@j617
		cmp	word [bp-8],0
		ja	..@j607
..@j617:
..@j606:
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bx+12],ax
		mov	ax,word [bp-2]
		mov	word [bx+14],ax
..@j604:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TBITS_$__$$_GET$LONGINT$$BOOLEAN
