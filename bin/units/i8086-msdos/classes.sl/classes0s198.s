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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_ASSIGN$TPERSISTENT
CLASSES$_$TCOLLECTION_$__$$_ASSIGN$TPERSISTENT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word VMT_$CLASSES_$$_TCOLLECTION
		push	ax
		push	word [bp+4]
		call	fpc_do_is
		test	al,al
		jne	..@j4435
		jmp	..@j4436
..@j4435:
		push	word [bp+6]
		call	CLASSES$_$TCOLLECTION_$__$$_CLEAR
		push	word [bp+4]
		call	CLASSES$_$TCOLLECTION_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-10],cx
		mov	word [bp-8],ax
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jl	..@j4448
		jg	..@j4450
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		jb	..@j4448
..@j4450:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j4449:
		add	word [bp-4],1
		adc	word [bp-2],0
		push	word [bp+6]
		call	CLASSES$_$TCOLLECTION_$__$$_ADD$$TCOLLECTIONITEM
		mov	word [bp-6],ax
		push	word [bp-6]
		push	word [bp+4]
		push	word [bp-4]
		call	CLASSES$_$TCOLLECTION_$__$$_GETITEM$SMALLINT$$TCOLLECTIONITEM
		push	ax
		mov	bx,word [bp-6]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jg	..@j4449
		jl	..@j4463
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		ja	..@j4449
..@j4463:
..@j4448:
		jmp	..@j4433
		jmp	..@j4464
..@j4436:
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TPERSISTENT_$__$$_ASSIGN$TPERSISTENT
..@j4464:
..@j4433:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TPERSISTENT_$__$$_ASSIGN$TPERSISTENT
EXTERN	CLASSES$_$TCOLLECTION_$__$$_GETITEM$SMALLINT$$TCOLLECTIONITEM
EXTERN	CLASSES$_$TCOLLECTION_$__$$_ADD$$TCOLLECTIONITEM
EXTERN	CLASSES$_$TCOLLECTION_$__$$_GETCOUNT$$SMALLINT
EXTERN	CLASSES$_$TCOLLECTION_$__$$_CLEAR
EXTERN	fpc_do_is
EXTERN	VMT_$CLASSES_$$_TCOLLECTION
