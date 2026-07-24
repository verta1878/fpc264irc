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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_CHANGING
CLASSES$_$TSTRINGLIST_$__$$_CHANGING:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+10],0
		je	..@j9104
		jmp	..@j9105
..@j9104:
		mov	bx,word [bp+4]
		cmp	word [bx+30],0
		jne	..@j9106
		jmp	..@j9107
..@j9106:
		mov	bx,word [bp+4]
		push	word [bx+32]
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	ax,word [bx+30]
		call	ax
..@j9107:
..@j9105:
		mov	sp,bp
		pop	bp
		ret	2
