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
	GLOBAL FGL$_$TFPSLIST_$__$$_EXPAND$$TFPSLIST
FGL$_$TFPSLIST_$__$$_EXPAND$$TFPSLIST:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+4]
		cmp	ax,word [si+6]
		jl	..@j490
		jmp	..@j491
..@j490:
		jmp	..@j488
..@j491:
		mov	word [bp-6],4
		mov	word [bp-4],0
		mov	bx,word [bp+4]
		cmp	word [bx+6],3
		jg	..@j494
		jmp	..@j495
..@j494:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		add	ax,4
		adc	dx,0
		mov	word [bp-6],ax
		mov	word [bp-4],dx
..@j495:
		mov	bx,word [bp+4]
		cmp	word [bx+6],8
		jg	..@j498
		jmp	..@j499
..@j498:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		add	ax,8
		adc	dx,0
		mov	word [bp-6],ax
		mov	word [bp-4],dx
..@j499:
		mov	bx,word [bp+4]
		cmp	word [bx+6],127
		jg	..@j502
		jmp	..@j503
..@j502:
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	cl,2
		shr	ax,cl
		cwd
		mov	cx,ax
		mov	ax,dx
		add	word [bp-6],cx
		adc	word [bp-4],ax
..@j503:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		cwd
		mov	cx,word [bp-6]
		mov	bx,word [bp-4]
		add	cx,ax
		adc	bx,dx
		push	cx
		call	FGL$_$TFPSLIST_$__$$_SETCAPACITY$SMALLINT
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
..@j488:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FGL$_$TFPSLIST_$__$$_SETCAPACITY$SMALLINT
