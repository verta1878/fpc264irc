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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_ENDUPDATE
CLASSES$_$TCOLLECTION_$__$$_ENDUPDATE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+10],0
		jg	..@j4497
		jmp	..@j4498
..@j4497:
		mov	bx,word [bp+4]
		dec	word [bx+10]
..@j4498:
		mov	bx,word [bp+4]
		cmp	word [bx+10],0
		je	..@j4499
		jmp	..@j4500
..@j4499:
		push	word [bp+4]
		call	CLASSES$_$TCOLLECTION_$__$$_CHANGED
..@j4500:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TCOLLECTION_$__$$_CHANGED
