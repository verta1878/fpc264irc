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
	GLOBAL SYSUTILS$_$EXCEPTION_$__$$_CREATERESFMTHELP$PANSISTRING$array_of_const$LONGINT$$EXCEPTION
SYSUTILS$_$EXCEPTION_$__$$_CREATERESFMTHELP$PANSISTRING$array_of_const$LONGINT$$EXCEPTION:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-30],0
		cmp	word [bp+14],1
		je	..@j14259
		jmp	..@j14260
..@j14259:
		push	word [bp+16]
		mov	bx,word [bp+16]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+16],ax
..@j14260:
		cmp	word [bp+16],0
		je	..@j14265
		jmp	..@j14266
..@j14265:
		jmp	..@j14257
..@j14266:
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
		jne	..@j14269
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
		jne	..@j14273
		push	word [bp+16]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+16]
		lea	ax,[bx+2]
		push	ax
		lea	ax,[bp-30]
		push	ax
		mov	bx,word [bp+12]
		push	word [bx]
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-30]
		call	fpc_ansistr_assign
		mov	bx,word [bp+16]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
		mov	ax,word [bp+6]
		mov	word [bx+6],ax
..@j14273:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j14274
		call	FPC_RERAISE
..@j14274:
		cmp	word [bp+16],0
		jne	..@j14295
		jmp	..@j14294
..@j14295:
		cmp	word [bp+14],0
		jne	..@j14293
		jmp	..@j14294
..@j14293:
		push	word [bp+16]
		mov	bx,word [bp+16]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j14294:
..@j14269:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14271
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
		jne	..@j14298
		cmp	word [bp+14],0
		jne	..@j14299
		jmp	..@j14300
..@j14299:
		push	word [bp+16]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+16]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14300:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14298:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14305
		call	FPC_RAISE_NESTED
..@j14305:
		call	FPC_DONEEXCEPTION
		jmp	..@j14271
..@j14271:
..@j14257:
		mov	ax,word [bp+16]
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
