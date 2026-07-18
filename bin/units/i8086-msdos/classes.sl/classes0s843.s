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
	GLOBAL CLASSES$_$TREADER_$__$$_READCOMPONENTS$TCOMPONENT$TCOMPONENT$TREADCOMPONENTSPROC
CLASSES$_$TREADER_$__$$_READCOMPONENTS$TCOMPONENT$TCOMPONENT$TREADCOMPONENTSPROC:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		push	word [bp+10]
		push	word [bp+8]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		mov	bx,word [bp+10]
		mov	ax,word [bp+8]
		mov	word [bx+11],ax
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+13],ax
		push	word [bp+10]
		call	CLASSES$_$TREADER_$__$$_BEGINREFERENCES
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j20605
		jmp	..@j20609
	ALIGN 2
..@j20608:
		mov	bx,word [bp+10]
		push	word [bx+9]
		mov	bx,word [bp+10]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		push	word [bp+10]
		mov	ax,0
		push	ax
		call	CLASSES$_$TREADER_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT
		mov	word [bp-2],ax
		cmp	word [bp-6],0
		jne	..@j20619
		jmp	..@j20620
..@j20619:
		push	word [bp-4]
		push	word [bp-2]
		mov	ax,word [bp-6]
		call	ax
..@j20620:
..@j20609:
		push	word [bp+10]
		call	CLASSES$_$TREADER_$__$$_ENDOFLIST$$BOOLEAN
		test	al,al
		jne	..@j20610
		jmp	..@j20608
..@j20610:
		push	word [bp+10]
		call	CLASSES$_$TREADER_$__$$_READLISTEND
		push	word [bp+10]
		call	CLASSES$_$TREADER_$__$$_FIXUPREFERENCES
..@j20605:
		call	FPC_POPADDRSTACK
		push	word [bp+10]
		call	CLASSES$_$TREADER_$__$$_ENDREFERENCES
		pop	ax
		test	ax,ax
		je	..@j20606
		call	FPC_RERAISE
..@j20606:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TREADER_$__$$_ENDREFERENCES
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TREADER_$__$$_FIXUPREFERENCES
EXTERN	CLASSES$_$TREADER_$__$$_READLISTEND
EXTERN	CLASSES$_$TREADER_$__$$_ENDOFLIST$$BOOLEAN
EXTERN	CLASSES$_$TREADER_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TREADER_$__$$_BEGINREFERENCES
