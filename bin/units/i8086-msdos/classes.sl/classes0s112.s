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
	GLOBAL CLASSES$_$TSTREAMADAPTER_$__$$_SEEK$QWORD$LONGINT$QWORD$$HRESULT
CLASSES$_$TSTREAMADAPTER_$__$$_SEEK$QWORD$LONGINT$QWORD$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+4]
		cmp	byte [bx+14],0
		jne	..@j2595
		jmp	..@j2596
..@j2595:
		mov	word [bp-4],258
		mov	word [bp-2],-32765
		jmp	..@j2593
..@j2596:
		mov	dx,word [bp+14]
		mov	ax,word [bp+16]
		test	ax,ax
		jne	..@j2604
		test	dx,dx
		je	..@j2601
..@j2604:
		test	ax,ax
		jne	..@j2605
		cmp	dx,1
		je	..@j2602
..@j2605:
		test	ax,ax
		jne	..@j2606
		cmp	dx,2
		je	..@j2603
..@j2606:
		jmp	..@j2600
..@j2601:
		mov	bx,word [bp+4]
		push	word [bx+8]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		mov	word [bp-12],dx
		mov	word [bp-10],cx
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		jmp	..@j2599
..@j2602:
		mov	bx,word [bp+4]
		push	word [bx+8]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		mov	word [bp-12],dx
		mov	word [bp-10],cx
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		jmp	..@j2599
..@j2603:
		mov	bx,word [bp+4]
		push	word [bx+8]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		mov	word [bp-12],dx
		mov	word [bp-10],cx
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		jmp	..@j2599
..@j2600:
		mov	word [bp-4],1
		mov	word [bp-2],-32765
		jmp	..@j2593
..@j2599:
		mov	ax,word [bp+18]
		test	ax,ax
		jne	..@j2633
		jmp	..@j2634
..@j2633:
		mov	di,word [bp+18]
		push	ds
		pop	es
		lea	si,[bp-12]
		cld
		mov	cx,4
		rep
		movsw
..@j2634:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j2593:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	16
