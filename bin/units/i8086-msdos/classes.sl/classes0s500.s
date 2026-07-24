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
	GLOBAL CLASSES$_$TLINKEDLIST_$__$$_FOREACH$TLINKEDLISTVISITOR
CLASSES$_$TLINKEDLIST_$__$$_FOREACH$TLINKEDLISTVISITOR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
		jmp	..@j11197
	ALIGN 2
..@j11196:
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
..@j11197:
		cmp	word [bp-2],0
		jne	..@j11201
		jmp	..@j11198
..@j11201:
		push	word [bp+4]
		push	word [bp-2]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		test	al,al
		jne	..@j11196
		jmp	..@j11198
..@j11198:
		mov	sp,bp
		pop	bp
		ret	4
