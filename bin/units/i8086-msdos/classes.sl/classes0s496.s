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
	GLOBAL CLASSES$_$TLINKEDLIST_$__$$_CREATE$TLINKEDLISTITEMCLASS$$TLINKEDLIST
CLASSES$_$TLINKEDLIST_$__$$_CREATE$TLINKEDLISTITEMCLASS$$TLINKEDLIST:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j11118
		jmp	..@j11119
..@j11118:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j11119:
		cmp	word [bp+8],0
		je	..@j11124
		jmp	..@j11125
..@j11124:
		jmp	..@j11116
..@j11125:
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
		jne	..@j11128
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
		cmp	word [bp+8],0
		jne	..@j11137
		jmp	..@j11136
..@j11137:
		cmp	word [bp+6],0
		jne	..@j11135
		jmp	..@j11136
..@j11135:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j11136:
..@j11128:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11130
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
		jne	..@j11140
		cmp	word [bp+6],0
		jne	..@j11141
		jmp	..@j11142
..@j11141:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j11142:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j11140:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11147
		call	FPC_RAISE_NESTED
..@j11147:
		call	FPC_DONEEXCEPTION
		jmp	..@j11130
..@j11130:
..@j11116:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
