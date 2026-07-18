BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_INIT$LONGINT$LONGINT$$LONGBOOL
OBJECTS$_$TCOLLECTION_$__$$_INIT$LONGINT$LONGINT$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+14]
		lea	ax,[bp+12]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_constructor
		mov	word [bp+14],ax
		cmp	word [bp+14],0
		je	..@j1593
		jmp	..@j1594
..@j1593:
		jmp	..@j1583
..@j1594:
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
		jne	..@j1597
		mov	ax,word [bp+14]
		push	ax
		mov	ax,0
		push	ax
		call	OBJECTS$_$TOBJECT_$__$$_INIT$$LONGBOOL
		mov	bx,word [bp+14]
		mov	ax,word [bp+4]
		mov	word [bx+12],ax
		mov	ax,word [bp+6]
		mov	word [bx+14],ax
		mov	ax,word [bp+14]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	ax,word [bx+16]
		call	ax
..@j1597:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1599
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
		jne	..@j1611
		cmp	word [bp+12],0
		jne	..@j1612
		jmp	..@j1613
..@j1612:
		mov	ax,word [bp+14]
		push	ax
		push	word [bp+12]
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j1613:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j1611:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1618
		call	FPC_RAISE_NESTED
..@j1618:
		call	FPC_DONEEXCEPTION
		jmp	..@j1599
..@j1599:
..@j1583:
		mov	ax,word [bp+14]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	OBJECTS$_$TOBJECT_$__$$_INIT$$LONGBOOL
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
