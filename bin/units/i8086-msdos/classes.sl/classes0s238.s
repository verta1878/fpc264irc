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
	GLOBAL CLASSES$_$TFPLIST_$__$$_SORT$TLISTSORTCOMPARE
CLASSES$_$TFPLIST_$__$$_SORT$TLISTSORTCOMPARE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		je	..@j5219
		jmp	..@j5221
..@j5221:
		mov	bx,word [bp+6]
		cmp	word [bx+4],2
		jl	..@j5219
		jmp	..@j5220
..@j5219:
		jmp	..@j5217
..@j5220:
		mov	bx,word [bp+6]
		push	word [bx+2]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		push	word [bp+4]
		call	CLASSES_$$_QUICKSORT$PPOINTERLIST$LONGINT$LONGINT$TLISTSORTCOMPARE
..@j5217:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES_$$_QUICKSORT$PPOINTERLIST$LONGINT$LONGINT$TLISTSORTCOMPARE
