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
	GLOBAL OBJECTS$_$TSTREAM_$__$$_INIT$$LONGBOOL
OBJECTS$_$TSTREAM_$__$$_INIT$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+6]
		lea	ax,[bp+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_constructor
		mov	word [bp+6],ax
		cmp	word [bp+6],0
		je	..@j237
		jmp	..@j238
..@j237:
		jmp	..@j227
..@j238:
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
		jne	..@j241
		mov	bx,word [bp+6]
		mov	word [bx+2],0
		mov	bx,word [bp+6]
		mov	word [bx+4],0
		mov	bx,word [bp+6]
		mov	word [bx+6],0
		mov	word [bx+8],0
		mov	bx,word [bp+6]
		mov	word [bx+10],0
		mov	word [bx+12],0
		mov	bx,word [bp+6]
		mov	al,byte [TC_$OBJECTS_$$_DEFAULTTPCOMPATIBLE]
		mov	byte [bx+14],al
..@j241:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j243
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
		jne	..@j255
		cmp	word [bp+4],0
		jne	..@j256
		jmp	..@j257
..@j256:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j257:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j255:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j262
		call	FPC_RAISE_NESTED
..@j262:
		call	FPC_DONEEXCEPTION
		jmp	..@j243
..@j243:
..@j227:
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	TC_$OBJECTS_$$_DEFAULTTPCOMPATIBLE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
