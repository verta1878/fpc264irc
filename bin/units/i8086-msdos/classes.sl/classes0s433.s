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
	GLOBAL CLASSES_$$_EXECUTETHREADQUEUEENTRY$TThread.PTHREADQUEUEENTRY
CLASSES_$$_EXECUTETHREADQUEUEENTRY$TThread.PTHREADQUEUEENTRY:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jne	..@j9911
		jmp	..@j9912
..@j9911:
		mov	bx,word [bp+4]
		push	word [bx+2]
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		call	ax
..@j9912:
		mov	sp,bp
		pop	bp
		ret	2
