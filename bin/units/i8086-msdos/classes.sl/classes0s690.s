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
	GLOBAL CLASSES_$$_POINTSEQUAL$TPOINT$TPOINT$$BOOLEAN
CLASSES_$$_POINTSEQUAL$TPOINT$TPOINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		mov	dx,word [bx+4]
		mov	bx,word [bx+6]
		cmp	bx,word [si+6]
		jne	..@j14585
		cmp	dx,word [si+4]
		jne	..@j14585
		cmp	cx,word [si+2]
		jne	..@j14585
		cmp	ax,word [si]
		jne	..@j14585
		jmp	..@j14584
		jmp	..@j14585
..@j14584:
		mov	byte [bp-1],1
		jmp	..@j14586
..@j14585:
		mov	byte [bp-1],0
..@j14586:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
