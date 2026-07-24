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
	GLOBAL CLASSES_$$_OBJECTTEXTTORESOURCE$TSTREAM$TSTREAM
CLASSES_$$_OBJECTTEXTTORESOURCE$TSTREAM$TSTREAM:
		push	bp
		mov	bp,sp
		sub	sp,42
		mov	word [bp-12],0
		mov	word [bp-42],0
		mov	ax,1
		push	ax
		lea	ax,[bp-24]
		push	ax
		lea	ax,[bp-18]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j17317
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	word [bp-4],dx
		mov	word [bp-2],cx
		mov	ax,word VMT_$CLASSES_$$_TPARSER
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_CREATE$TSTREAM$$TPARSER
		mov	word [bp-10],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-38]
		push	ax
		lea	ax,[bp-32]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j17331
		push	word [bp-10]
		mov	ax,word _$CLASSES$_Ld64
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
		test	al,al
		je	..@j17334
		jmp	..@j17335
..@j17334:
		push	word [bp-10]
		mov	ax,word _$CLASSES$_Ld65
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKENSYMBOL$ANSISTRING
..@j17335:
		push	word [bp-10]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		push	word [bp-10]
		mov	ax,1
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
		push	word [bp-10]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		push	word [bp-10]
		mov	ax,58
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
		push	word [bp-10]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		push	word [bp-10]
		mov	ax,1
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
		push	word [bp-10]
		lea	ax,[bp-12]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
..@j17331:
		call	FPC_POPADDRSTACK
		push	word [bp-10]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		push	word [bp+6]
		mov	dx,word [bp-4]
		mov	si,word [bp-2]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		push	bx
		push	ax
		push	si
		push	dx
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		pop	ax
		test	ax,ax
		je	..@j17332
		call	FPC_RERAISE
..@j17332:
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-42]
		push	ax
		push	word [bp-12]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-42]
		call	fpc_ansistr_assign
		push	word [bp+4]
		push	word [bp-12]
		lea	ax,[bp-8]
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITERESOURCEHEADER$ANSISTRING$LONGINT
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES_$$_OBJECTTEXTTOBINARY$TSTREAM$TSTREAM
		push	word [bp+4]
		push	word [bp-6]
		push	word [bp-8]
		call	CLASSES$_$TSTREAM_$__$$_FIXUPRESOURCEHEADER$LONGINT
..@j17317:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-42]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j17318
		call	FPC_RERAISE
..@j17318:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	CLASSES$_$TSTREAM_$__$$_FIXUPRESOURCEHEADER$LONGINT
EXTERN	CLASSES_$$_OBJECTTEXTTOBINARY$TSTREAM$TSTREAM
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITERESOURCEHEADER$ANSISTRING$LONGINT
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
EXTERN	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKTOKENSYMBOL$ANSISTRING
EXTERN	_$CLASSES$_Ld65
EXTERN	CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
EXTERN	_$CLASSES$_Ld64
EXTERN	CLASSES$_$TPARSER_$__$$_CREATE$TSTREAM$$TPARSER
EXTERN	VMT_$CLASSES_$$_TPARSER
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
