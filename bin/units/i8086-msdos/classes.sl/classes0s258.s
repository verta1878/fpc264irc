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
	GLOBAL CLASSES$_$TLIST_$__$$_NOTIFY$POINTER$TLISTNOTIFICATION
CLASSES$_$TLIST_$__$$_NOTIFY$POINTER$TLISTNOTIFICATION:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+10]
		cmp	word [bx+4],0
		jne	..@j5760
		jmp	..@j5761
..@j5760:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j5767
		test	dx,dx
		je	..@j5764
..@j5767:
		test	ax,ax
		jne	..@j5768
		cmp	dx,1
		je	..@j5765
..@j5768:
		test	ax,ax
		jne	..@j5769
		cmp	dx,2
		je	..@j5766
..@j5769:
		jmp	..@j5763
..@j5764:
		push	word [bp+10]
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		push	word [bp+8]
		call	CLASSES$_$TLIST_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
		jmp	..@j5762
..@j5765:
		push	word [bp+10]
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	ax,3
		push	ax
		push	word [bp+8]
		call	CLASSES$_$TLIST_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
		jmp	..@j5762
..@j5766:
		push	word [bp+10]
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	ax,3
		push	ax
		push	word [bp+8]
		call	CLASSES$_$TLIST_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
		jmp	..@j5762
..@j5763:
..@j5762:
..@j5761:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$TLIST_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
