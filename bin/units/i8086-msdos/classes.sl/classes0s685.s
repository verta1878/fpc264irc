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
	GLOBAL CLASSES$_$EXTRACTSTRINGS$crcE0409673_$$_SKIPWHITESPACE
CLASSES$_$EXTRACTSTRINGS$crcE0409673_$$_SKIPWHITESPACE:
		push	bp
		mov	bp,sp
		jmp	..@j14546
	ALIGN 2
..@j14545:
		mov	bx,word [bp+4]
		inc	word [bx-6]
..@j14546:
		mov	bx,word [bp+4]
		mov	si,word [bx-6]
		mov	bx,word [bp+4]
		mov	al,byte [si]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j14548
		test	al,0
		jmp	..@j14549
..@j14548:
		mov	ax,1
		shl	ax,cl
		test	word [bx+si-72],ax
..@j14549:
		jne	..@j14545
		jmp	..@j14547
..@j14547:
		mov	sp,bp
		pop	bp
		ret	2
