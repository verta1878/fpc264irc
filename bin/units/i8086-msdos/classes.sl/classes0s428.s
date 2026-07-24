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
	GLOBAL CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j9824
		jmp	..@j9825
..@j9824:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j9825:
		cmp	word [bp+10],0
		je	..@j9830
		jmp	..@j9831
..@j9830:
		jmp	..@j9822
..@j9831:
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
		jne	..@j9834
		push	word [bp+10]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+10]
		cmp	byte [bx+19],0
		jne	..@j9843
		jmp	..@j9844
..@j9843:
		call	SYSTEM_$$_GETCURRENTTHREADID$$WORD
		mov	bx,word [bp+10]
		mov	word [bx+22],ax
		jmp	..@j9847
..@j9844:
		push	word [bp+10]
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		push	word [bp+4]
		call	CLASSES$_$TTHREAD_$__$$_SYSCREATE$BOOLEAN$WORD
..@j9847:
		cmp	word [bp+10],0
		jne	..@j9856
		jmp	..@j9855
..@j9856:
		cmp	word [bp+8],0
		jne	..@j9854
		jmp	..@j9855
..@j9854:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j9855:
..@j9834:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j9836
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
		jne	..@j9859
		cmp	word [bp+8],0
		jne	..@j9860
		jmp	..@j9861
..@j9860:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j9861:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j9859:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j9866
		call	FPC_RAISE_NESTED
..@j9866:
		call	FPC_DONEEXCEPTION
		jmp	..@j9836
..@j9836:
..@j9822:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TTHREAD_$__$$_SYSCREATE$BOOLEAN$WORD
EXTERN	SYSTEM_$$_GETCURRENTTHREADID$$WORD
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
