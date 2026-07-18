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
	GLOBAL CLASSES$_$TLIST_$__$$_DESTROY
CLASSES$_$TLIST_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j5866
		jmp	..@j5867
..@j5866:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j5867:
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		jne	..@j5870
		jmp	..@j5871
..@j5870:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
..@j5871:
		mov	bx,word [bp+6]
		cmp	word [bx+4],0
		jne	..@j5874
		jmp	..@j5875
..@j5874:
		push	word [bp+6]
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TLIST_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
		mov	bx,word [bp+6]
		lea	ax,[bx+4]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
..@j5875:
		mov	bx,word [bp+6]
		lea	ax,[bx+2]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j5894
		jmp	..@j5893
..@j5894:
		cmp	word [bp+4],0
		jne	..@j5892
		jmp	..@j5893
..@j5892:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j5893:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
EXTERN	CLASSES$_$TLIST_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
