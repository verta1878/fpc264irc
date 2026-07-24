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
	GLOBAL CLASSES$_$TRECALL_$__$$_CREATE$TPERSISTENT$TPERSISTENT$$TRECALL
CLASSES$_$TRECALL_$__$$_CREATE$TPERSISTENT$TPERSISTENT$$TRECALL:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j11029
		jmp	..@j11030
..@j11029:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j11030:
		cmp	word [bp+10],0
		je	..@j11035
		jmp	..@j11036
..@j11035:
		jmp	..@j11027
..@j11036:
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
		jne	..@j11039
		push	word [bp+10]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+2],ax
		mov	bx,word [bp+10]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
		push	word [bp+10]
		call	CLASSES$_$TRECALL_$__$$_STORE
		cmp	word [bp+10],0
		jne	..@j11056
		jmp	..@j11055
..@j11056:
		cmp	word [bp+8],0
		jne	..@j11054
		jmp	..@j11055
..@j11054:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j11055:
..@j11039:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11041
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
		jne	..@j11059
		cmp	word [bp+8],0
		jne	..@j11060
		jmp	..@j11061
..@j11060:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j11061:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j11059:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11066
		call	FPC_RAISE_NESTED
..@j11066:
		call	FPC_DONEEXCEPTION
		jmp	..@j11041
..@j11041:
..@j11027:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TRECALL_$__$$_STORE
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
