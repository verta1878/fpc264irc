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
	GLOBAL CLASSES$_$TBASICACTIONLINK_$__$$_SETACTION$TBASICACTION
CLASSES$_$TBASICACTIONLINK_$__$$_SETACTION$TBASICACTION:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+4]
		jne	..@j13101
		jmp	..@j13102
..@j13101:
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		jne	..@j13103
		jmp	..@j13104
..@j13103:
		mov	bx,word [bp+6]
		push	word [bx+6]
		push	word [bp+6]
		call	CLASSES$_$TBASICACTION_$__$$_UNREGISTERCHANGES$TBASICACTIONLINK
..@j13104:
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx+6],ax
		cmp	word [bp+4],0
		jne	..@j13111
		jmp	..@j13112
..@j13111:
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TBASICACTION_$__$$_REGISTERCHANGES$TBASICACTIONLINK
..@j13112:
..@j13102:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TBASICACTION_$__$$_REGISTERCHANGES$TBASICACTIONLINK
EXTERN	CLASSES$_$TBASICACTION_$__$$_UNREGISTERCHANGES$TBASICACTIONLINK
