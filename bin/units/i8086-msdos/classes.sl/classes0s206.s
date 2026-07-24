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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION
CLASSES$_$TCOLLECTION_$__$$_NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		jne	..@j4552
		jmp	..@j4551
..@j4552:
		mov	bx,word [bp+10]
		cmp	word [bx+10],0
		je	..@j4550
		jmp	..@j4551
..@j4550:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		test	dx,dx
		jne	..@j4558
		test	ax,ax
		je	..@j4555
..@j4558:
		test	dx,dx
		jne	..@j4559
		cmp	ax,1
		je	..@j4556
..@j4559:
		test	dx,dx
		jne	..@j4560
		cmp	ax,2
		je	..@j4557
..@j4560:
		jmp	..@j4554
..@j4555:
		push	word [bp+10]
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		push	word [bp+8]
		call	CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
		jmp	..@j4553
..@j4556:
		push	word [bp+10]
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	ax,3
		push	ax
		push	word [bp+8]
		call	CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
		jmp	..@j4553
..@j4557:
		push	word [bp+10]
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	ax,3
		push	ax
		push	word [bp+8]
		call	CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
		jmp	..@j4553
..@j4554:
..@j4553:
..@j4551:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
