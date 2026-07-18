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
	GLOBAL CLASSES$_$TPARSER_$__$$_TOKENCOMPONENTIDENT$$ANSISTRING
CLASSES$_$TPARSER_$__$$_TOKENCOMPONENTIDENT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-22],0
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
		jne	..@j3721
		mov	bx,word [bp+6]
		cmp	byte [bx+15],1
		jne	..@j3723
		jmp	..@j3724
..@j3723:
		push	word [bp+6]
		push	word [RESSTR_$RTLCONSTS_$$_SPAREXPECTED+2]
		push	word [bp+6]
		lea	ax,[bp-22]
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TPARSER_$__$$_GETTOKENNAME$CHAR$$ANSISTRING
		mov	ax,word [bp-22]
		mov	dx,0
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	word [bp-20],11
		lea	ax,[bp-20]
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
..@j3724:
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
		jmp	..@j3742
	ALIGN 2
..@j3741:
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_PROCESSCHAR
		mov	bx,word [bp+6]
		lea	ax,[bx+17]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+17]
		push	word [bp+6]
		lea	ax,[bp-22]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_GETALPHANUM$$ANSISTRING
		push	word [bp-22]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j3742:
		mov	bx,word [bp+6]
		mov	bx,word [bx+4]
		mov	si,word [bp+6]
		mov	si,word [si+8]
		cmp	byte [bx+si],46
		je	..@j3741
		jmp	..@j3743
..@j3743:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+17]
		call	fpc_ansistr_assign
..@j3721:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3722
		call	FPC_RERAISE
..@j3722:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_concat
EXTERN	CLASSES$_$TPARSER_$__$$_GETALPHANUM$$ANSISTRING
EXTERN	CLASSES$_$TPARSER_$__$$_PROCESSCHAR
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
EXTERN	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
EXTERN	CLASSES$_$TPARSER_$__$$_GETTOKENNAME$CHAR$$ANSISTRING
EXTERN	RESSTR_$RTLCONSTS_$$_SPAREXPECTED
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
