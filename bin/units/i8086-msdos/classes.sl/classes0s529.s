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
	GLOBAL CLASSES$_$TCOMPONENTENUMERATOR_$__$$_CREATE$TCOMPONENT$$TCOMPONENTENUMERATOR
CLASSES$_$TCOMPONENTENUMERATOR_$__$$_CREATE$TCOMPONENT$$TCOMPONENTENUMERATOR:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j11931
		jmp	..@j11932
..@j11931:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j11932:
		cmp	word [bp+8],0
		je	..@j11937
		jmp	..@j11938
..@j11937:
		jmp	..@j11929
..@j11938:
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
		jne	..@j11941
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
		jne	..@j11956
		jmp	..@j11955
..@j11956:
		cmp	word [bp+6],0
		jne	..@j11954
		jmp	..@j11955
..@j11954:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j11955:
..@j11941:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11943
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
		jne	..@j11959
		cmp	word [bp+6],0
		jne	..@j11960
		jmp	..@j11961
..@j11960:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j11961:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j11959:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11966
		call	FPC_RAISE_NESTED
..@j11966:
		call	FPC_DONEEXCEPTION
		jmp	..@j11943
..@j11943:
..@j11929:
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
