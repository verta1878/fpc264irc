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
	GLOBAL CLASSES$_$TSTREAMADAPTER_$__$$_WRITE$POINTER$LONGWORD$PDWORD$$HRESULT
CLASSES$_$TSTREAMADAPTER_$__$$_WRITE$POINTER$LONGWORD$PDWORD$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		cmp	byte [bx+14],0
		jne	..@j2571
		jmp	..@j2572
..@j2571:
		mov	word [bp-4],258
		mov	word [bp-2],-32765
		jmp	..@j2569
..@j2572:
		cmp	word [bp+6],0
		je	..@j2575
		jmp	..@j2576
..@j2575:
		mov	word [bp-4],9
		mov	word [bp-2],-32765
		jmp	..@j2569
..@j2576:
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		cmp	word [bp+12],0
		jne	..@j2587
		jmp	..@j2588
..@j2587:
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	word [bx],ax
		mov	ax,word [bp-6]
		mov	word [bx+2],ax
..@j2588:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j2569:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
