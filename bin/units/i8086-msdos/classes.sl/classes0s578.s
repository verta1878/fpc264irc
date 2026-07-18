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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_DESTROYING
CLASSES$_$TCOMPONENT_$__$$_DESTROYING:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+4]
		test	word [bx+22],8
		jne	..@j12661
		jmp	..@j12662
..@j12661:
		jmp	..@j12659
..@j12662:
		mov	bx,word [bp+4]
		mov	al,byte [bx+22]
		mov	ah,0
		or	ax,8
		mov	byte [bx+22],al
		mov	bx,word [bp+4]
		cmp	word [bx+12],0
		jne	..@j12663
		jmp	..@j12664
..@j12663:
		mov	bx,word [bp+4]
		mov	bx,word [bx+12]
		mov	ax,word [bx+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-10],cx
		mov	word [bp-8],ax
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jl	..@j12668
		jg	..@j12670
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		jb	..@j12668
..@j12670:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j12669:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+4]
		push	word [bx+12]
		push	word [bp-4]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-6],ax
		push	word [bp-6]
		call	CLASSES$_$TCOMPONENT_$__$$_DESTROYING
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jg	..@j12669
		jl	..@j12679
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		ja	..@j12669
..@j12679:
..@j12668:
..@j12664:
..@j12659:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
