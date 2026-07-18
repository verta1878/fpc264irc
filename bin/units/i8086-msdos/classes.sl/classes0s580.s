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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_FINDCOMPONENT$ANSISTRING$$TCOMPONENT
CLASSES$_$TCOMPONENT_$__$$_FINDCOMPONENT$ANSISTRING$$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-2],0
		cmp	word [bp+4],0
		je	..@j12701
		jmp	..@j12703
..@j12703:
		mov	bx,word [bp+6]
		cmp	word [bx+12],0
		je	..@j12701
		jmp	..@j12702
..@j12701:
		jmp	..@j12697
..@j12702:
		mov	bx,word [bp+6]
		mov	bx,word [bx+12]
		mov	ax,word [bx+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-12],cx
		mov	word [bp-10],ax
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		jl	..@j12707
		jg	..@j12709
		mov	ax,word [bp-12]
		cmp	ax,word [bp-6]
		jb	..@j12707
..@j12709:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j12708:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	bx,word [bp+6]
		push	word [bx+12]
		push	word [bp-6]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-8],ax
		mov	bx,word [bp-8]
		push	word [bx+8]
		push	word [bp+4]
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		je	..@j12716
		jmp	..@j12717
..@j12716:
		mov	ax,word [bp-8]
		mov	word [bp-2],ax
		jmp	..@j12697
..@j12717:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		jg	..@j12708
		jl	..@j12724
		mov	ax,word [bp-12]
		cmp	ax,word [bp-6]
		ja	..@j12708
..@j12724:
..@j12707:
..@j12697:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
