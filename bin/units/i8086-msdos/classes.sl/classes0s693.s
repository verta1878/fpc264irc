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
	GLOBAL CLASSES_$$_INVALIDPOINT$TPOINT$$BOOLEAN
CLASSES_$$_INVALIDPOINT$TPOINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		cmp	dx,-1
		jne	..@j14601
		cmp	ax,-1
		jne	..@j14601
		jmp	..@j14602
..@j14602:
		mov	bx,word [bp+4]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,-1
		jne	..@j14601
		cmp	dx,-1
		jne	..@j14601
		jmp	..@j14600
..@j14600:
		mov	byte [bp-1],1
		jmp	..@j14603
..@j14601:
		mov	byte [bp-1],0
..@j14603:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
