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
	GLOBAL CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSPROPERTY
CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSPROPERTY:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-2],0
		mov	word [bp-24],0
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
		jne	..@j16782
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,1
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
		mov	bx,word [bp+4]
		push	word [bx-2]
		lea	ax,[bp-2]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
		jmp	..@j16793
	ALIGN 2
..@j16792:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		mov	bx,word [bx-2]
		cmp	byte [bx+15],46
		jne	..@j16797
		jmp	..@j16798
..@j16797:
		jmp	..@j16794
..@j16798:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,1
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
		lea	ax,[bp-2]
		push	ax
		mov	ax,word [bp-2]
		mov	word [bp-22],ax
		mov	ax,word _$CLASSES$_Ld15
		mov	word [bp-20],ax
		mov	bx,word [bp+4]
		push	word [bx-2]
		lea	ax,[bp-24]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
		mov	ax,word [bp-24]
		mov	word [bp-18],ax
		lea	ax,[bp-22]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
..@j16793:
		jmp	..@j16792
..@j16794:
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-2]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITESTRING$ANSISTRING
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,61
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	ax,word [bp+4]
		push	ax
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSVALUE
..@j16782:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16783
		call	FPC_RERAISE
..@j16783:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSVALUE
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITESTRING$ANSISTRING
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$CLASSES$_Ld15
EXTERN	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
EXTERN	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
