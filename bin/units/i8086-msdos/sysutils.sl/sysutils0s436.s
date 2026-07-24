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
	GLOBAL SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-30],0
		cmp	word [bp+10],1
		je	..@j13998
		jmp	..@j13999
..@j13998:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+12],ax
..@j13999:
		cmp	word [bp+12],0
		je	..@j14004
		jmp	..@j14005
..@j14004:
		jmp	..@j13996
..@j14005:
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
		jne	..@j14008
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
		jne	..@j14012
		push	word [bp+12]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+12]
		lea	ax,[bx+2]
		push	ax
		lea	ax,[bp-30]
		push	ax
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-30]
		call	fpc_ansistr_assign
..@j14012:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j14013
		call	FPC_RERAISE
..@j14013:
		cmp	word [bp+12],0
		jne	..@j14032
		jmp	..@j14031
..@j14032:
		cmp	word [bp+10],0
		jne	..@j14030
		jmp	..@j14031
..@j14030:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j14031:
..@j14008:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14010
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
		jne	..@j14035
		cmp	word [bp+10],0
		jne	..@j14036
		jmp	..@j14037
..@j14036:
		push	word [bp+12]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14037:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14035:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14042
		call	FPC_RAISE_NESTED
..@j14042:
		call	FPC_DONEEXCEPTION
		jmp	..@j14010
..@j14010:
..@j13996:
		mov	ax,word [bp+12]
		mov	sp,bp
		pop	bp
		ret	10
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
