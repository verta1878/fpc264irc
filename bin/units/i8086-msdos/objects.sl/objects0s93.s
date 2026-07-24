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
	GLOBAL OBJECTS$_$TSORTEDCOLLECTION_$__$$_LOAD$TSTREAM$$LONGBOOL
OBJECTS$_$TSORTEDCOLLECTION_$__$$_LOAD$TSTREAM$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+8]
		lea	ax,[bp+6]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_constructor
		mov	word [bp+8],ax
		cmp	word [bp+8],0
		je	..@j2214
		jmp	..@j2215
..@j2214:
		jmp	..@j2204
..@j2215:
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
		jne	..@j2218
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	OBJECTS$_$TCOLLECTION_$__$$_LOAD$TSTREAM$$LONGBOOL
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+16]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j2218:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2220
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
		jne	..@j2234
		cmp	word [bp+6],0
		jne	..@j2235
		jmp	..@j2236
..@j2235:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j2236:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j2234:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2241
		call	FPC_RAISE_NESTED
..@j2241:
		call	FPC_DONEEXCEPTION
		jmp	..@j2220
..@j2220:
..@j2204:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_LOAD$TSTREAM$$LONGBOOL
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
