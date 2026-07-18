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
	GLOBAL OBJECTS$_$TOBJECT_$__$$_INIT$$LONGBOOL
OBJECTS$_$TOBJECT_$__$$_INIT$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,34
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
		je	..@j172
		jmp	..@j173
..@j172:
		jmp	..@j162
..@j173:
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j176
		lea	ax,[bp-4]
		lea	dx,[bp-6]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word [bp+6]
		mov	dx,word [bp-4]
		add	dx,ax
		push	dx
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx]
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	bx,word [bp-4]
		mov	dx,word [bp-2]
		sub	cx,bx
		sbb	ax,dx
		push	cx
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
..@j176:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j178
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j188
		cmp	word [bp+4],0
		jne	..@j189
		jmp	..@j190
..@j189:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j190:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j188:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j195
		call	FPC_RAISE_NESTED
..@j195:
		call	FPC_DONEEXCEPTION
		jmp	..@j178
..@j178:
..@j162:
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
