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
	GLOBAL CLASSES$_$TCOLLECTIONITEM_$__$$_CHANGED$BOOLEAN
CLASSES$_$TCOLLECTIONITEM_$__$$_CHANGED$BOOLEAN:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		jne	..@j3893
		jmp	..@j3892
..@j3893:
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		cmp	word [bx+10],0
		je	..@j3891
		jmp	..@j3892
..@j3891:
		cmp	byte [bp+4],0
		jne	..@j3894
		jmp	..@j3895
..@j3894:
		mov	bx,word [bp+6]
		push	word [bx+6]
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		jmp	..@j3900
..@j3895:
		mov	bx,word [bp+6]
		push	word [bx+6]
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
..@j3900:
..@j3892:
		mov	sp,bp
		pop	bp
		ret	4
