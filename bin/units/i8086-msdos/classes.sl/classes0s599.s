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
	GLOBAL CLASSES$_$TBASICACTIONLINK_$__$$_CREATE$TOBJECT$$TBASICACTIONLINK
CLASSES$_$TBASICACTIONLINK_$__$$_CREATE$TOBJECT$$TBASICACTIONLINK:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j13017
		jmp	..@j13018
..@j13017:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j13018:
		cmp	word [bp+8],0
		je	..@j13023
		jmp	..@j13024
..@j13023:
		jmp	..@j13015
..@j13024:
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
		jne	..@j13027
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		push	word [bp+8]
		push	word [bp+4]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		cmp	word [bp+8],0
		jne	..@j13042
		jmp	..@j13041
..@j13042:
		cmp	word [bp+6],0
		jne	..@j13040
		jmp	..@j13041
..@j13040:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j13041:
..@j13027:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13029
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
		jne	..@j13045
		cmp	word [bp+6],0
		jne	..@j13046
		jmp	..@j13047
..@j13046:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j13047:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j13045:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13052
		call	FPC_RAISE_NESTED
..@j13052:
		call	FPC_DONEEXCEPTION
		jmp	..@j13029
..@j13029:
..@j13015:
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
