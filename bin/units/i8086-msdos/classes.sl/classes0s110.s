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
	GLOBAL CLASSES$_$TSTREAMADAPTER_$__$$_READ$POINTER$LONGWORD$PDWORD$$HRESULT
CLASSES$_$TSTREAMADAPTER_$__$$_READ$POINTER$LONGWORD$PDWORD$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		cmp	byte [bx+14],0
		jne	..@j2547
		jmp	..@j2548
..@j2547:
		mov	word [bp-4],258
		mov	word [bp-2],-32765
		jmp	..@j2545
..@j2548:
		cmp	word [bp+6],0
		je	..@j2551
		jmp	..@j2552
..@j2551:
		mov	word [bp-4],9
		mov	word [bp-2],-32765
		jmp	..@j2545
..@j2552:
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		cmp	word [bp+12],0
		jne	..@j2563
		jmp	..@j2564
..@j2563:
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	word [bx],ax
		mov	ax,word [bp-6]
		mov	word [bx+2],ax
..@j2564:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j2545:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
