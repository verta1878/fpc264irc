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
	GLOBAL CLASSES$_$TDATAMODULE_$__$$_DESTROY
CLASSES$_$TDATAMODULE_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j13465
		jmp	..@j13466
..@j13465:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j13466:
		mov	bx,word [bp+6]
		cmp	byte [bx+54],0
		jne	..@j13469
		jmp	..@j13470
..@j13469:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+110]
		call	ax
..@j13470:
		cmp	word [U_$CLASSES_$$_REMOVEDATAMODULE],0
		jne	..@j13473
		jmp	..@j13474
..@j13473:
		push	word [U_$CLASSES_$$_REMOVEDATAMODULE+2]
		push	word [bp+6]
		mov	ax,word [U_$CLASSES_$$_REMOVEDATAMODULE]
		call	ax
..@j13474:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	CLASSES$_$TCOMPONENT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j13485
		jmp	..@j13484
..@j13485:
		cmp	word [bp+4],0
		jne	..@j13483
		jmp	..@j13484
..@j13483:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j13484:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TCOMPONENT_$__$$_DESTROY
EXTERN	U_$CLASSES_$$_REMOVEDATAMODULE
