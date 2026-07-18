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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_FINDITEMID$SMALLINT$$TCOLLECTIONITEM
CLASSES$_$TCOLLECTION_$__$$_FINDITEMID$SMALLINT$$TCOLLECTIONITEM:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	ax,word [bx+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-10],cx
		mov	word [bp-8],ax
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		jl	..@j4508
		jg	..@j4510
		mov	ax,word [bp-10]
		cmp	ax,word [bp-6]
		jb	..@j4508
..@j4510:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j4509:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	bx,word [bp+6]
		push	word [bx+8]
		push	word [bp-6]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+8]
		cmp	ax,word [bp+4]
		je	..@j4517
		jmp	..@j4518
..@j4517:
		jmp	..@j4503
..@j4518:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		jg	..@j4509
		jl	..@j4519
		mov	ax,word [bp-10]
		cmp	ax,word [bp-6]
		ja	..@j4509
..@j4519:
..@j4508:
		mov	word [bp-2],0
..@j4503:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
