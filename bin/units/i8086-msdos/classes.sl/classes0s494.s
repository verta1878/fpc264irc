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
	GLOBAL CLASSES$_$TRECALL_$__$$_STORE
CLASSES$_$TRECALL_$__$$_STORE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+2],0
		jne	..@j11100
		jmp	..@j11099
..@j11100:
		mov	bx,word [bp+4]
		cmp	word [bx+4],0
		jne	..@j11098
		jmp	..@j11099
..@j11098:
		mov	bx,word [bp+4]
		push	word [bx+2]
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
..@j11099:
		mov	sp,bp
		pop	bp
		ret	2
