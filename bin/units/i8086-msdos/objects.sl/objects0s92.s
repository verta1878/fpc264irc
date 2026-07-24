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
	GLOBAL OBJECTS$_$TSORTEDCOLLECTION_$__$$_INIT$LONGINT$LONGINT$$LONGBOOL
OBJECTS$_$TSORTEDCOLLECTION_$__$$_INIT$LONGINT$LONGINT$$LONGBOOL:
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
		je	..@j2178
		jmp	..@j2179
..@j2178:
		jmp	..@j2168
..@j2179:
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
		jne	..@j2182
		mov	ax,word [bp+14]
		push	ax
		mov	ax,0
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	OBJECTS$_$TCOLLECTION_$__$$_INIT$LONGINT$LONGINT$$LONGBOOL
		mov	bx,word [bp+14]
		mov	byte [bx+16],0
..@j2182:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2184
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
		jne	..@j2196
		cmp	word [bp+12],0
		jne	..@j2197
		jmp	..@j2198
..@j2197:
		mov	ax,word [bp+14]
		push	ax
		push	word [bp+12]
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j2198:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j2196:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2203
		call	FPC_RAISE_NESTED
..@j2203:
		call	FPC_DONEEXCEPTION
		jmp	..@j2184
..@j2184:
..@j2168:
		mov	ax,word [bp+14]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_INIT$LONGINT$LONGINT$$LONGBOOL
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
