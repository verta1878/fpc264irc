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
	GLOBAL CLASSES$_$TTHREADLIST_$__$$_DESTROY
CLASSES$_$TTHREADLIST_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		sub	sp,14
		cmp	word [bp+4],0
		jg	..@j6665
		jmp	..@j6666
..@j6665:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j6666:
		push	word [bp+6]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
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
		jne	..@j6671
		mov	bx,word [bp+6]
		push	word [bx+2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
..@j6671:
		call	FPC_POPADDRSTACK
		push	word [bp+6]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		mov	bx,word [bp+6]
		lea	ax,[bx+6]
		push	ax
		call	SYSTEM_$$_DONECRITICALSECTION$TRTLCRITICALSECTION
		pop	ax
		test	ax,ax
		je	..@j6672
		call	FPC_RERAISE
..@j6672:
		cmp	word [bp+6],0
		jne	..@j6686
		jmp	..@j6685
..@j6686:
		cmp	word [bp+4],0
		jne	..@j6684
		jmp	..@j6685
..@j6684:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j6685:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	SYSTEM_$$_DONECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
