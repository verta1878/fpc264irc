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
	GLOBAL CLASSES$_$TCOLLECTIONENUMERATOR_$__$$_CREATE$TCOLLECTION$$TCOLLECTIONENUMERATOR
CLASSES$_$TCOLLECTIONENUMERATOR_$__$$_CREATE$TCOLLECTION$$TCOLLECTIONENUMERATOR:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j4044
		jmp	..@j4045
..@j4044:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j4045:
		cmp	word [bp+8],0
		je	..@j4050
		jmp	..@j4051
..@j4050:
		jmp	..@j4042
..@j4051:
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
		jne	..@j4054
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
		jne	..@j4069
		jmp	..@j4068
..@j4069:
		cmp	word [bp+6],0
		jne	..@j4067
		jmp	..@j4068
..@j4067:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j4068:
..@j4054:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4056
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
		jne	..@j4072
		cmp	word [bp+6],0
		jne	..@j4073
		jmp	..@j4074
..@j4073:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j4074:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j4072:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4079
		call	FPC_RAISE_NESTED
..@j4079:
		call	FPC_DONEEXCEPTION
		jmp	..@j4056
..@j4056:
..@j4042:
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
