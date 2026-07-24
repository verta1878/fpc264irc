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
	GLOBAL CLASSES$_$TMEMORYSTREAM_$__$$_DESTROY
CLASSES$_$TMEMORYSTREAM_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j1845
		jmp	..@j1846
..@j1845:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j1846:
		push	word [bp+6]
		call	CLASSES$_$TMEMORYSTREAM_$__$$_CLEAR
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j1857
		jmp	..@j1856
..@j1857:
		cmp	word [bp+4],0
		jne	..@j1855
		jmp	..@j1856
..@j1855:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j1856:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	CLASSES$_$TMEMORYSTREAM_$__$$_CLEAR
