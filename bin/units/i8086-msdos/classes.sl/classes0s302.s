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
	GLOBAL CLASSES$_$TSTRINGSENUMERATOR_$__$$_CREATE$TSTRINGS$$TSTRINGSENUMERATOR
CLASSES$_$TSTRINGSENUMERATOR_$__$$_CREATE$TSTRINGS$$TSTRINGSENUMERATOR:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j6754
		jmp	..@j6755
..@j6754:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j6755:
		cmp	word [bp+8],0
		je	..@j6760
		jmp	..@j6761
..@j6760:
		jmp	..@j6752
..@j6761:
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
		jne	..@j6764
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
		mov	bx,word [bp+8]
		mov	word [bx+4],-1
		cmp	word [bp+8],0
		jne	..@j6779
		jmp	..@j6778
..@j6779:
		cmp	word [bp+6],0
		jne	..@j6777
		jmp	..@j6778
..@j6777:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j6778:
..@j6764:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j6766
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
		jne	..@j6782
		cmp	word [bp+6],0
		jne	..@j6783
		jmp	..@j6784
..@j6783:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j6784:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j6782:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j6789
		call	FPC_RAISE_NESTED
..@j6789:
		call	FPC_DONEEXCEPTION
		jmp	..@j6766
..@j6766:
..@j6752:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
