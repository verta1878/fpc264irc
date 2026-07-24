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
	GLOBAL CLASSES$_$TCOLLECTIONITEM_$__$$_SETCOLLECTION$TCOLLECTION
CLASSES$_$TCOLLECTIONITEM_$__$$_SETCOLLECTION$TCOLLECTION:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+4]
		jne	..@j3875
		jmp	..@j3876
..@j3875:
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		jne	..@j3877
		jmp	..@j3878
..@j3877:
		mov	bx,word [bp+6]
		push	word [bx+6]
		push	word [bp+6]
		call	CLASSES$_$TCOLLECTION_$__$$_REMOVEITEM$TCOLLECTIONITEM
..@j3878:
		cmp	word [bp+4],0
		jne	..@j3883
		jmp	..@j3884
..@j3883:
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TCOLLECTION_$__$$_INSERTITEM$TCOLLECTIONITEM
..@j3884:
..@j3876:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TCOLLECTION_$__$$_INSERTITEM$TCOLLECTIONITEM
EXTERN	CLASSES$_$TCOLLECTION_$__$$_REMOVEITEM$TCOLLECTIONITEM
