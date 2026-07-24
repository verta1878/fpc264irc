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
	GLOBAL CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSOBJECT
CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSOBJECT:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-4],0
		mov	word [bp-6],0
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j16633
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,word _$CLASSES$_Ld64
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
		test	al,al
		jne	..@j16635
		jmp	..@j16636
..@j16635:
		mov	byte [bp-1],0
		jmp	..@j16643
..@j16636:
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,word _$CLASSES$_Ld65
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
		test	al,al
		jne	..@j16644
		jmp	..@j16645
..@j16644:
		mov	byte [bp-1],1
		jmp	..@j16652
..@j16645:
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,word _$CLASSES$_Ld66
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKENSYMBOL$ANSISTRING
		mov	byte [bp-1],4
..@j16652:
..@j16643:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,1
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
		lea	ax,[bp-4]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		push	word [bx-2]
		lea	ax,[bp-6]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		mov	bx,word [bx-2]
		cmp	byte [bx+15],58
		je	..@j16675
		jmp	..@j16676
..@j16675:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,1
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		push	word [bx-2]
		lea	ax,[bp-6]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		mov	bx,word [bx-2]
		cmp	byte [bx+15],91
		je	..@j16693
		jmp	..@j16694
..@j16693:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_TOKENINT$$INT64
		mov	word [bp-8],dx
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,93
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	al,byte [bp-1]
		mov	ah,0
		or	ax,2
		mov	byte [bp-1],al
..@j16694:
..@j16676:
		cmp	byte [bp-1],0
		jne	..@j16711
		jmp	..@j16712
..@j16711:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	al,byte [bp-1]
		or	al,240
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	al,byte [bp-1]
		mov	ah,0
		and	ax,2
		test	ax,ax
		jne	..@j16717
		jmp	..@j16718
..@j16717:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-8]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		push	si
		push	bx
		push	dx
		push	ax
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEINTEGER$INT64
..@j16718:
..@j16712:
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-6]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITESTRING$ANSISTRING
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-4]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITESTRING$ANSISTRING
		jmp	..@j16732
	ALIGN 2
..@j16731:
		mov	ax,word [bp+4]
		push	ax
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSPROPERTY
..@j16732:
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,word _$CLASSES$_Ld67
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
		test	al,al
		jne	..@j16733
		jmp	..@j16738
..@j16738:
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,word _$CLASSES$_Ld64
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
		test	al,al
		jne	..@j16733
		jmp	..@j16737
..@j16737:
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,word _$CLASSES$_Ld65
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
		test	al,al
		jne	..@j16733
		jmp	..@j16736
..@j16736:
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,word _$CLASSES$_Ld66
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
		test	al,al
		jne	..@j16733
		jmp	..@j16731
..@j16733:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		jmp	..@j16760
	ALIGN 2
..@j16759:
		mov	ax,word [bp+4]
		push	ax
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSOBJECT
..@j16760:
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,word _$CLASSES$_Ld67
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
		test	al,al
		jne	..@j16761
		jmp	..@j16759
..@j16761:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
..@j16633:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16634
		call	FPC_RERAISE
..@j16634:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	_$CLASSES$_Ld67
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSPROPERTY
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITESTRING$ANSISTRING
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEINTEGER$INT64
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
EXTERN	CLASSES$_$TPARSER_$__$$_TOKENINT$$INT64
EXTERN	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
EXTERN	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKTOKENSYMBOL$ANSISTRING
EXTERN	_$CLASSES$_Ld66
EXTERN	_$CLASSES$_Ld65
EXTERN	CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
EXTERN	_$CLASSES$_Ld64
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
