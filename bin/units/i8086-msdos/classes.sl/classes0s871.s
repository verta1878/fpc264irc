BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEIDENT$ANSISTRING
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEIDENT$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-16],0
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
		jne	..@j21292
		lea	ax,[bp-16]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-16]
		mov	ax,word _$CLASSES$_Ld76
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j21295
		cmp	cx,0
		jne	..@j21295
		jmp	..@j21294
..@j21294:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,13
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		jmp	..@j21308
..@j21295:
		lea	ax,[bp-16]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-16]
		mov	ax,word _$CLASSES$_Ld74
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j21310
		cmp	cx,0
		jne	..@j21310
		jmp	..@j21309
..@j21309:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,8
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		jmp	..@j21323
..@j21310:
		lea	ax,[bp-16]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-16]
		mov	ax,word _$CLASSES$_Ld75
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j21325
		cmp	cx,0
		jne	..@j21325
		jmp	..@j21324
..@j21324:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,9
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		jmp	..@j21338
..@j21325:
		lea	ax,[bp-16]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-16]
		mov	ax,word _$CLASSES$_Ld73
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j21340
		cmp	cx,0
		jne	..@j21340
		jmp	..@j21339
..@j21339:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		jmp	..@j21353
..@j21340:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,7
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTR$ANSISTRING
..@j21353:
..@j21338:
..@j21323:
..@j21308:
..@j21292:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j21293
		call	FPC_RERAISE
..@j21293:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTR$ANSISTRING
EXTERN	_$CLASSES$_Ld73
EXTERN	_$CLASSES$_Ld75
EXTERN	_$CLASSES$_Ld74
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
EXTERN	fpc_ansistr_compare_equal
EXTERN	_$CLASSES$_Ld76
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
