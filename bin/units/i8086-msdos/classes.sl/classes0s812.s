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
	GLOBAL CLASSES$_$TREADER_$__$$_ERROR$ANSISTRING$$BOOLEAN
CLASSES$_$TREADER_$__$$_ERROR$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-1],0
		mov	bx,word [bp+6]
		cmp	word [bx+39],0
		jne	..@j18634
		jmp	..@j18635
..@j18634:
		mov	bx,word [bp+6]
		push	word [bx+41]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-1]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+39]
		call	ax
..@j18635:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
