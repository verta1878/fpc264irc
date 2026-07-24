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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_SETANCESTOR$BOOLEAN
CLASSES$_$TCOMPONENT_$__$$_SETANCESTOR$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,10
		cmp	byte [bp+4],0
		jne	..@j12348
		jmp	..@j12349
..@j12348:
		mov	bx,word [bp+6]
		mov	al,byte [bx+22]
		mov	ah,0
		or	ax,32
		mov	byte [bx+22],al
		jmp	..@j12350
..@j12349:
		mov	bx,word [bp+6]
		mov	al,byte [bx+22]
		mov	ah,0
		and	ax,-33
		mov	byte [bx+22],al
..@j12350:
		mov	bx,word [bp+6]
		cmp	word [bx+12],0
		jne	..@j12351
		jmp	..@j12352
..@j12351:
		mov	bx,word [bp+6]
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
		jl	..@j12356
		jg	..@j12358
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		jb	..@j12356
..@j12358:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j12357:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+6]
		push	word [bx+12]
		push	word [bp-4]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-6],ax
		push	word [bp-6]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	CLASSES$_$TCOMPONENT_$__$$_SETANCESTOR$BOOLEAN
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jg	..@j12357
		jl	..@j12369
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		ja	..@j12357
..@j12369:
..@j12356:
..@j12352:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
