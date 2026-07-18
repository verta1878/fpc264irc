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
	GLOBAL CLASSES$_$TPOSCOMPONENT_$__$$_CREATE$SMALLINT$TCOMPONENT$$TPOSCOMPONENT
CLASSES$_$TPOSCOMPONENT_$__$$_CREATE$SMALLINT$TCOMPONENT$$TPOSCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j21879
		jmp	..@j21880
..@j21879:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j21880:
		cmp	word [bp+10],0
		je	..@j21885
		jmp	..@j21886
..@j21885:
		jmp	..@j21877
..@j21886:
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
		jne	..@j21889
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+2],ax
		mov	bx,word [bp+10]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
		cmp	word [bp+10],0
		jne	..@j21900
		jmp	..@j21899
..@j21900:
		cmp	word [bp+8],0
		jne	..@j21898
		jmp	..@j21899
..@j21898:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j21899:
..@j21889:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j21891
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
		jne	..@j21903
		cmp	word [bp+8],0
		jne	..@j21904
		jmp	..@j21905
..@j21904:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j21905:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j21903:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j21910
		call	FPC_RAISE_NESTED
..@j21910:
		call	FPC_DONEEXCEPTION
		jmp	..@j21891
..@j21891:
..@j21877:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
