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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESET$LONGINT$POINTER
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESET$LONGINT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-18],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j21487
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	ax,11
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		mov	word [bp-2],0
		dec	word [bp-2]
	ALIGN 2
..@j21495:
		inc	word [bp-2]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		cmp	ax,31
		jbe	..@j21498
		test	al,0
		jmp	..@j21499
..@j21498:
		mov	ax,1
		shl	ax,cl
		test	word [bp+si+6],ax
..@j21499:
		jne	..@j21496
		jmp	..@j21497
..@j21496:
		push	word [bp+10]
		lea	ax,[bp-18]
		push	ax
		push	word [bp+4]
		push	word [bp-2]
		call	TYPINFO_$$_GETENUMNAME$PTYPEINFO$SMALLINT$$ANSISTRING
		push	word [bp-18]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTR$ANSISTRING
..@j21497:
		cmp	word [bp-2],31
		jl	..@j21495
		push	word [bp+10]
		mov	ax,0
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTR$ANSISTRING
..@j21487:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j21488
		call	FPC_RERAISE
..@j21488:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTR$ANSISTRING
EXTERN	TYPINFO_$$_GETENUMNAME$PTYPEINFO$SMALLINT$$ANSISTRING
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
