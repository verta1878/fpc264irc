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
	GLOBAL SYSUTILS$_$EXCEPTION_$__$$_CREATEHELP$ANSISTRING$LONGINT$$EXCEPTION
SYSUTILS$_$EXCEPTION_$__$$_CREATEHELP$ANSISTRING$LONGINT$$EXCEPTION:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+10],1
		je	..@j14130
		jmp	..@j14131
..@j14130:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+12],ax
..@j14131:
		cmp	word [bp+12],0
		je	..@j14136
		jmp	..@j14137
..@j14136:
		jmp	..@j14128
..@j14137:
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
		jne	..@j14140
		push	word [bp+12]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+12]
		lea	ax,[bx+2]
		push	ax
		push	word [bp+8]
		call	fpc_ansistr_assign
		mov	bx,word [bp+12]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
		mov	ax,word [bp+6]
		mov	word [bx+6],ax
		cmp	word [bp+12],0
		jne	..@j14157
		jmp	..@j14156
..@j14157:
		cmp	word [bp+10],0
		jne	..@j14155
		jmp	..@j14156
..@j14155:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j14156:
..@j14140:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14142
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
		jne	..@j14160
		cmp	word [bp+10],0
		jne	..@j14161
		jmp	..@j14162
..@j14161:
		push	word [bp+12]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14162:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14160:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14167
		call	FPC_RAISE_NESTED
..@j14167:
		call	FPC_DONEEXCEPTION
		jmp	..@j14142
..@j14142:
..@j14128:
		mov	ax,word [bp+12]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
