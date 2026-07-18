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
	GLOBAL CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSWIDESTRING$WIDESTRING
CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSWIDESTRING$WIDESTRING:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-2],0
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
		jne	..@j17129
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+6]
		push	word [bx-2]
		lea	ax,[bp-18]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENWIDESTRING$$WIDESTRING
		push	word [bp-18]
		call	fpc_unicodestr_concat
		jmp	..@j17142
	ALIGN 2
..@j17141:
		mov	bx,word [bp+6]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+6]
		mov	bx,word [bx-2]
		mov	al,byte [bx+15]
		mov	ah,0
		cmp	ax,2
		je	..@j17148
		cmp	ax,5
		je	..@j17148
..@j17148:
		jne	..@j17146
		jmp	..@j17147
..@j17146:
		mov	bx,word [bp+6]
		push	word [bx-2]
		mov	ax,5
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
..@j17147:
		lea	ax,[bp-2]
		push	ax
		push	word [bp-2]
		mov	bx,word [bp+6]
		push	word [bx-2]
		lea	ax,[bp-18]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENWIDESTRING$$WIDESTRING
		push	word [bp-18]
		call	fpc_unicodestr_concat
..@j17142:
		mov	bx,word [bp+6]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		cmp	al,43
		je	..@j17141
		jmp	..@j17143
..@j17143:
		mov	bx,word [bp+6]
		push	word [bx+4]
		mov	ax,18
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEWSTRING$WIDESTRING
..@j17129:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j17130
		call	FPC_RERAISE
..@j17130:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEWSTRING$WIDESTRING
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
EXTERN	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
EXTERN	fpc_unicodestr_concat
EXTERN	CLASSES$_$TPARSER_$__$$_TOKENWIDESTRING$$WIDESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
