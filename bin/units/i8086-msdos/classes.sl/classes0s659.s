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
	GLOBAL CLASSES$_$TINTERFACELISTENUMERATOR_$__$$_CREATE$TINTERFACELIST$$TINTERFACELISTENUMERATOR
CLASSES$_$TINTERFACELISTENUMERATOR_$__$$_CREATE$TINTERFACELIST$$TINTERFACELISTENUMERATOR:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j14019
		jmp	..@j14020
..@j14019:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j14020:
		cmp	word [bp+8],0
		je	..@j14025
		jmp	..@j14026
..@j14025:
		jmp	..@j14017
..@j14026:
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
		jne	..@j14029
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
		jne	..@j14044
		jmp	..@j14043
..@j14044:
		cmp	word [bp+6],0
		jne	..@j14042
		jmp	..@j14043
..@j14042:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j14043:
..@j14029:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14031
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
		jne	..@j14047
		cmp	word [bp+6],0
		jne	..@j14048
		jmp	..@j14049
..@j14048:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14049:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14047:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14054
		call	FPC_RAISE_NESTED
..@j14054:
		call	FPC_DONEEXCEPTION
		jmp	..@j14031
..@j14031:
..@j14017:
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
