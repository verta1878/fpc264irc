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
	GLOBAL CLASSES$_$TBITS_$__$$_FINDNEXTBIT$$LONGINT
CLASSES$_$TBITS_$__$$_FINDNEXTBIT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		mov	bx,word [bp+4]
		mov	dx,word [bx+12]
		mov	ax,word [bx+14]
		cmp	ax,-1
		jg	..@j580
		jl	..@j581
		cmp	dx,-1
		ja	..@j580
		jmp	..@j581
..@j580:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		mov	bx,word [bp+4]
		mov	ax,word [bx+12]
		mov	dx,word [bx+14]
		add	ax,1
		adc	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	ax,word [bp-10]
		cmp	ax,word [bp-6]
		jl	..@j585
		jg	..@j587
		mov	ax,word [bp-12]
		cmp	ax,word [bp-8]
		jb	..@j585
..@j587:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j586:
		add	word [bp-8],1
		adc	word [bp-6],0
		push	word [bp+4]
		push	word [bp-6]
		push	word [bp-8]
		call	CLASSES$_$TBITS_$__$$_GET$LONGINT$$BOOLEAN
		mov	bx,word [bp+4]
		cmp	al,byte [bx+16]
		je	..@j588
		jmp	..@j589
..@j588:
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
		jmp	..@j585
..@j589:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-6]
		jg	..@j586
		jl	..@j596
		mov	ax,word [bp-12]
		cmp	ax,word [bp-8]
		ja	..@j586
..@j596:
..@j585:
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bx+12],ax
		mov	ax,word [bp-2]
		mov	word [bx+14],ax
..@j581:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TBITS_$__$$_GET$LONGINT$$BOOLEAN
