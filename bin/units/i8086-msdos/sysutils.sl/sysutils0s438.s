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
	GLOBAL SYSUTILS$_$EXCEPTION_$__$$_CREATERESFMT$PANSISTRING$array_of_const$$EXCEPTION
SYSUTILS$_$EXCEPTION_$__$$_CREATERESFMT$PANSISTRING$array_of_const$$EXCEPTION:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-30],0
		cmp	word [bp+10],1
		je	..@j14083
		jmp	..@j14084
..@j14083:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+12],ax
..@j14084:
		cmp	word [bp+12],0
		je	..@j14089
		jmp	..@j14090
..@j14089:
		jmp	..@j14081
..@j14090:
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
		jne	..@j14093
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
		jne	..@j14097
		push	word [bp+12]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+12]
		lea	ax,[bx+2]
		push	ax
		lea	ax,[bp-30]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-30]
		call	fpc_ansistr_assign
..@j14097:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j14098
		call	FPC_RERAISE
..@j14098:
		cmp	word [bp+12],0
		jne	..@j14117
		jmp	..@j14116
..@j14117:
		cmp	word [bp+10],0
		jne	..@j14115
		jmp	..@j14116
..@j14115:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j14116:
..@j14093:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14095
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
		jne	..@j14120
		cmp	word [bp+10],0
		jne	..@j14121
		jmp	..@j14122
..@j14121:
		push	word [bp+12]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14122:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14120:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14127
		call	FPC_RAISE_NESTED
..@j14127:
		call	FPC_DONEEXCEPTION
		jmp	..@j14095
..@j14095:
..@j14081:
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
