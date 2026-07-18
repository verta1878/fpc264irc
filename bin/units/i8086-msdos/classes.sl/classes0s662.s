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
	GLOBAL CLASSES$_$TINTERFACELIST_$__$$_CREATE$$TINTERFACELIST
CLASSES$_$TINTERFACELIST_$__$$_CREATE$$TINTERFACELIST:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+4],1
		je	..@j14072
		jmp	..@j14073
..@j14072:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+6],ax
..@j14073:
		cmp	word [bp+6],0
		je	..@j14078
		jmp	..@j14079
..@j14078:
		jmp	..@j14070
..@j14079:
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
		jne	..@j14082
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	ax,word VMT_$CLASSES_$$_TTHREADLIST
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TTHREADLIST_$__$$_CREATE$$TTHREADLIST
		mov	bx,word [bp+6]
		mov	word [bx+8],ax
		cmp	word [bp+6],0
		jne	..@j14099
		jmp	..@j14098
..@j14099:
		cmp	word [bp+4],0
		jne	..@j14097
		jmp	..@j14098
..@j14097:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j14098:
..@j14082:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14084
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
		jne	..@j14102
		cmp	word [bp+4],0
		jne	..@j14103
		jmp	..@j14104
..@j14103:
		push	word [bp+6]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14104:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14102:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14109
		call	FPC_RAISE_NESTED
..@j14109:
		call	FPC_DONEEXCEPTION
		jmp	..@j14084
..@j14084:
..@j14070:
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TTHREADLIST_$__$$_CREATE$$TTHREADLIST
EXTERN	VMT_$CLASSES_$$_TTHREADLIST
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
