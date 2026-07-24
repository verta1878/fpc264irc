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
	GLOBAL CLASSES$_$TEXTERNALTHREAD_$__$$_CREATE$$TEXTERNALTHREAD
CLASSES$_$TEXTERNALTHREAD_$__$$_CREATE$$TEXTERNALTHREAD:
		push	bp
		mov	bp,sp
		sub	sp,32
		cmp	word [bp+4],1
		je	..@j9677
		jmp	..@j9678
..@j9677:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+6],ax
..@j9678:
		cmp	word [bp+6],0
		je	..@j9683
		jmp	..@j9684
..@j9683:
		jmp	..@j9675
..@j9684:
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
		jne	..@j9687
		mov	bx,word [bp+6]
		mov	byte [bx+19],1
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,16384
		push	ax
		call	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
		push	word [U_$CLASSES_$$_EXTERNALTHREADS]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
		mov	word [bp-32],ax
		mov	ax,word [bp-32]
		mov	word [bp-30],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j9708
		push	word [bp-30]
		push	word [bp+6]
		call	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
..@j9708:
		call	FPC_POPADDRSTACK
		push	word [U_$CLASSES_$$_EXTERNALTHREADS]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j9709
		call	FPC_RERAISE
..@j9709:
		cmp	word [bp+6],0
		jne	..@j9719
		jmp	..@j9718
..@j9719:
		cmp	word [bp+4],0
		jne	..@j9717
		jmp	..@j9718
..@j9717:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j9718:
..@j9687:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j9689
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j9722
		cmp	word [bp+4],0
		jne	..@j9723
		jmp	..@j9724
..@j9723:
		push	word [bp+6]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j9724:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j9722:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j9729
		call	FPC_RAISE_NESTED
..@j9729:
		call	FPC_DONEEXCEPTION
		jmp	..@j9689
..@j9689:
..@j9675:
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
EXTERN	U_$CLASSES_$$_EXTERNALTHREADS
EXTERN	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
