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
	GLOBAL CLASSES_$$_LINESTART$PCHAR$PCHAR$$PCHAR
CLASSES_$$_LINESTART$PCHAR$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		jmp	..@j17403
	ALIGN 2
..@j17402:
		dec	word [bp-2]
		mov	bx,word [bp-2]
		cmp	byte [bx],10
		je	..@j17405
		jmp	..@j17406
..@j17405:
		jmp	..@j17404
..@j17406:
..@j17403:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		ja	..@j17402
		jmp	..@j17404
..@j17404:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
