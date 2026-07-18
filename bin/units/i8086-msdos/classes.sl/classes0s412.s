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
	GLOBAL CLASSES$_$TANONYMOUSTHREAD_$__$$_CREATE$TPROCEDURE$$TANONYMOUSTHREAD
CLASSES$_$TANONYMOUSTHREAD_$__$$_CREATE$TPROCEDURE$$TANONYMOUSTHREAD:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j9633
		jmp	..@j9634
..@j9633:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j9634:
		cmp	word [bp+8],0
		je	..@j9639
		jmp	..@j9640
..@j9639:
		jmp	..@j9631
..@j9640:
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
		jne	..@j9643
		push	word [bp+8]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	ax,16384
		push	ax
		call	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
		mov	bx,word [bp+8]
		mov	byte [bx+5],1
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+24],ax
		cmp	word [bp+8],0
		jne	..@j9662
		jmp	..@j9661
..@j9662:
		cmp	word [bp+6],0
		jne	..@j9660
		jmp	..@j9661
..@j9660:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j9661:
..@j9643:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j9645
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
		jne	..@j9665
		cmp	word [bp+6],0
		jne	..@j9666
		jmp	..@j9667
..@j9666:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j9667:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j9665:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j9672
		call	FPC_RAISE_NESTED
..@j9672:
		call	FPC_DONEEXCEPTION
		jmp	..@j9645
..@j9645:
..@j9631:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
