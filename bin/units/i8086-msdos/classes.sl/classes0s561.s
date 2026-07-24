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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_SETDESIGNING$BOOLEAN$BOOLEAN
CLASSES$_$TCOMPONENT_$__$$_SETDESIGNING$BOOLEAN$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,10
		cmp	byte [bp+6],0
		jne	..@j12372
		jmp	..@j12373
..@j12372:
		mov	bx,word [bp+8]
		mov	al,byte [bx+22]
		mov	ah,0
		or	ax,16
		mov	byte [bx+22],al
		jmp	..@j12374
..@j12373:
		mov	bx,word [bp+8]
		mov	al,byte [bx+22]
		mov	ah,0
		and	ax,-17
		mov	byte [bx+22],al
..@j12374:
		mov	bx,word [bp+8]
		cmp	word [bx+12],0
		jne	..@j12377
		jmp	..@j12376
..@j12377:
		cmp	byte [bp+4],0
		jne	..@j12375
		jmp	..@j12376
..@j12375:
		mov	bx,word [bp+8]
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
		jl	..@j12381
		jg	..@j12383
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		jb	..@j12381
..@j12383:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j12382:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+8]
		push	word [bx+12]
		push	word [bp-4]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-6],ax
		push	word [bp-6]
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TCOMPONENT_$__$$_SETDESIGNING$BOOLEAN$BOOLEAN
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jg	..@j12382
		jl	..@j12396
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		ja	..@j12382
..@j12396:
..@j12381:
..@j12376:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
