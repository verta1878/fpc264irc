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
	GLOBAL SYSUTILS$_$EXCEPTION_$__$$_CREATEFMTHELP$ANSISTRING$array_of_const$LONGINT$$EXCEPTION
SYSUTILS$_$EXCEPTION_$__$$_CREATEFMTHELP$ANSISTRING$array_of_const$LONGINT$$EXCEPTION:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-30],0
		cmp	word [bp+14],1
		je	..@j14170
		jmp	..@j14171
..@j14170:
		push	word [bp+16]
		mov	bx,word [bp+16]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+16],ax
..@j14171:
		cmp	word [bp+16],0
		je	..@j14176
		jmp	..@j14177
..@j14176:
		jmp	..@j14168
..@j14177:
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
		jne	..@j14180
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
		jne	..@j14184
		push	word [bp+16]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+16]
		lea	ax,[bx+2]
		push	ax
		lea	ax,[bp-30]
		push	ax
		push	word [bp+12]
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
..@j14184:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j14185
		call	FPC_RERAISE
..@j14185:
		cmp	word [bp+16],0
		jne	..@j14206
		jmp	..@j14205
..@j14206:
		cmp	word [bp+14],0
		jne	..@j14204
		jmp	..@j14205
..@j14204:
		push	word [bp+16]
		mov	bx,word [bp+16]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j14205:
..@j14180:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14182
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
		jne	..@j14209
		cmp	word [bp+14],0
		jne	..@j14210
		jmp	..@j14211
..@j14210:
		push	word [bp+16]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+16]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14211:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14209:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14216
		call	FPC_RAISE_NESTED
..@j14216:
		call	FPC_DONEEXCEPTION
		jmp	..@j14182
..@j14182:
..@j14168:
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
