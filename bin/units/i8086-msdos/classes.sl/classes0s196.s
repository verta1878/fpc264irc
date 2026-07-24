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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_DESTROY
CLASSES$_$TCOLLECTION_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		sub	sp,14
		cmp	word [bp+4],0
		jg	..@j4399
		jmp	..@j4400
..@j4399:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j4400:
		mov	bx,word [bp+6]
		mov	word [bx+10],1
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4405
		push	word [bp+6]
		call	CLASSES$_$TCOLLECTION_$__$$_DOCLEAR
..@j4405:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+6]
		mov	word [bx+10],0
		pop	ax
		test	ax,ax
		je	..@j4406
		call	FPC_RERAISE
..@j4406:
		mov	bx,word [bp+6]
		push	word [bx+8]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	CLASSES$_$TPERSISTENT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j4420
		jmp	..@j4419
..@j4420:
		cmp	word [bp+4],0
		jne	..@j4418
		jmp	..@j4419
..@j4418:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j4419:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TPERSISTENT_$__$$_DESTROY
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TCOLLECTION_$__$$_DOCLEAR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
