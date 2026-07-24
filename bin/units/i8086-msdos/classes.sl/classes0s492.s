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
	GLOBAL CLASSES$_$TRECALL_$__$$_DESTROY
CLASSES$_$TRECALL_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j11069
		jmp	..@j11070
..@j11069:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j11070:
		mov	bx,word [bp+6]
		cmp	word [bx+4],0
		jne	..@j11073
		jmp	..@j11074
..@j11073:
		mov	bx,word [bp+6]
		push	word [bx+4]
		mov	bx,word [bp+6]
		push	word [bx+2]
		mov	bx,word [bp+6]
		mov	bx,word [bx+4]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
..@j11074:
		push	word [bp+6]
		call	CLASSES$_$TRECALL_$__$$_FORGET
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j11087
		jmp	..@j11086
..@j11087:
		cmp	word [bp+4],0
		jne	..@j11085
		jmp	..@j11086
..@j11085:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j11086:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	CLASSES$_$TRECALL_$__$$_FORGET
