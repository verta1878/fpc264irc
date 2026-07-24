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
	GLOBAL CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSVALUE
CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSVALUE:
		push	bp
		mov	bp,sp
		sub	sp,46
		mov	word [bp-12],0
		mov	word [bp-32],0
		mov	word [bp-30],0
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
		jne	..@j16833
		mov	bx,word [bp+4]
		mov	bx,word [bx-2]
		mov	al,byte [bx+15]
		cmp	al,1
		jb	..@j16836
		dec	al
		je	..@j16841
		dec	al
		je	..@j16839
		dec	al
		je	..@j16837
		dec	al
		je	..@j16838
		dec	al
		je	..@j16840
		sub	al,35
		je	..@j16843
		sub	al,20
		je	..@j16844
		sub	al,31
		je	..@j16842
		sub	al,32
		je	..@j16845
		jmp	..@j16836
..@j16837:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_TOKENINT$$INT64
		push	ax
		push	bx
		push	cx
		push	dx
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEINTEGER$INT64
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		jmp	..@j16835
..@j16838:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,5
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_TOKENFLOAT$$EXTENDED
		wait fstp	tword [bp-10]
		DB	09bh
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEEXTENDED$EXTENDED
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		jmp	..@j16835
..@j16839:
		mov	bx,word [bp+4]
		push	word [bx-2]
		lea	ax,[bp-12]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
		jmp	..@j16873
	ALIGN 2
..@j16872:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		mov	bx,word [bx-2]
		mov	al,byte [bx+15]
		cmp	al,2
		jb	..@j16878
		sub	al,2
		je	..@j16879
		sub	al,3
		je	..@j16880
		jmp	..@j16878
..@j16879:
		lea	ax,[bp-12]
		push	ax
		push	word [bp-12]
		mov	bx,word [bp+4]
		push	word [bx-2]
		lea	ax,[bp-30]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
		push	word [bp-30]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j16877
..@j16880:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-32]
		push	ax
		push	word [bp-12]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-32]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSWIDESTRING$WIDESTRING
		jmp	..@j16833
		jmp	..@j16877
..@j16878:
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,2
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
..@j16877:
..@j16873:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		cmp	al,43
		je	..@j16872
		jmp	..@j16874
..@j16874:
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j16909
		mov	bx,word [bx-2]
..@j16909:
		cmp	bx,255
		jg	..@j16907
		jmp	..@j16908
..@j16907:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,12
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-12]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITELSTRING$ANSISTRING
		jmp	..@j16918
..@j16908:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,6
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-12]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITESTRING$ANSISTRING
..@j16918:
		jmp	..@j16835
..@j16840:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSWIDESTRING$WIDESTRING
		jmp	..@j16835
..@j16841:
		mov	bx,word [bp+4]
		push	word [bx-2]
		lea	ax,[bp-30]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
		push	word [bp-30]
		mov	ax,word _$CLASSES$_Ld50
		push	ax
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		je	..@j16931
		jmp	..@j16932
..@j16931:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,9
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		jmp	..@j16945
..@j16932:
		mov	bx,word [bp+4]
		push	word [bx-2]
		lea	ax,[bp-30]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
		push	word [bp-30]
		mov	ax,word _$CLASSES$_Ld49
		push	ax
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		je	..@j16946
		jmp	..@j16947
..@j16946:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,8
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		jmp	..@j16960
..@j16947:
		mov	bx,word [bp+4]
		push	word [bx-2]
		lea	ax,[bp-30]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
		push	word [bp-30]
		mov	ax,word _$CLASSES$_Ld52
		push	ax
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		je	..@j16961
		jmp	..@j16962
..@j16961:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,13
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		jmp	..@j16975
..@j16962:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,7
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx-2]
		lea	ax,[bp-30]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENCOMPONENTIDENT$$ANSISTRING
		push	word [bp-30]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITESTRING$ANSISTRING
..@j16975:
..@j16960:
..@j16945:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		jmp	..@j16835
..@j16842:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,11
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	bx,word [bp+4]
		mov	bx,word [bx-2]
		cmp	byte [bx+15],93
		jne	..@j16996
		jmp	..@j16997
..@j16996:
		jmp	..@j16999
	ALIGN 2
..@j16998:
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,1
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx-2]
		lea	ax,[bp-30]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
		push	word [bp-30]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITESTRING$ANSISTRING
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		mov	bx,word [bx-2]
		cmp	byte [bx+15],93
		je	..@j17015
		jmp	..@j17016
..@j17015:
		jmp	..@j17000
..@j17016:
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,44
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
..@j16999:
		jmp	..@j16998
..@j17000:
..@j16997:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		jmp	..@j16835
..@j16843:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,1
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		jmp	..@j17036
	ALIGN 2
..@j17035:
		mov	ax,word [bp+4]
		push	ax
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSVALUE
..@j17036:
		mov	bx,word [bp+4]
		mov	bx,word [bx-2]
		cmp	byte [bx+15],41
		jne	..@j17035
		jmp	..@j17037
..@j17037:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		jmp	..@j16835
..@j16844:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,14
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		jmp	..@j17053
	ALIGN 2
..@j17052:
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,word _$CLASSES$_Ld68
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKENSYMBOL$ANSISTRING
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,1
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		jmp	..@j17066
	ALIGN 2
..@j17065:
		mov	ax,word [bp+4]
		push	ax
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSPROPERTY
..@j17066:
		mov	bx,word [bp+4]
		push	word [bx-2]
		mov	ax,word _$CLASSES$_Ld45
		push	ax
		call	CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
		test	al,al
		jne	..@j17067
		jmp	..@j17065
..@j17067:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
..@j17053:
		mov	bx,word [bp+4]
		mov	bx,word [bx-2]
		cmp	byte [bx+15],62
		jne	..@j17052
		jmp	..@j17054
..@j17054:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		jmp	..@j16835
..@j16845:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,10
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	ax,word VMT_$CLASSES_$$_TMEMORYSTREAM
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	word [bp-14],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-44]
		push	ax
		lea	ax,[bp-38]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j17096
		mov	bx,word [bp+4]
		push	word [bx-2]
		push	word [bp-14]
		call	CLASSES$_$TPARSER_$__$$_HEXTOBINARY$TSTREAM
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-14]
		mov	bx,word [bp-14]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		push	cx
		push	dx
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEDWORD$LONGWORD
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	bx,word [bp-14]
		mov	ax,word [bx+2]
		push	ax
		push	word [bp-14]
		mov	bx,word [bp-14]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		push	cx
		push	dx
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
..@j17096:
		call	FPC_POPADDRSTACK
		push	word [bp-14]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j17097
		call	FPC_RERAISE
..@j17097:
		mov	bx,word [bp+4]
		push	word [bx-2]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		jmp	..@j16835
..@j16836:
		mov	bx,word [bp+4]
		push	word [bx-2]
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTY+2]
		call	CLASSES$_$TPARSER_$__$$_ERROR$ANSISTRING
..@j16835:
..@j16833:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-32]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16834
		call	FPC_RERAISE
..@j16834:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_unicodestr_decr_ref
EXTERN	CLASSES$_$TPARSER_$__$$_ERROR$ANSISTRING
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTY
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEDWORD$LONGWORD
EXTERN	CLASSES$_$TPARSER_$__$$_HEXTOBINARY$TSTREAM
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TMEMORYSTREAM
EXTERN	CLASSES$_$TPARSER_$__$$_TOKENSYMBOLIS$ANSISTRING$$BOOLEAN
EXTERN	_$CLASSES$_Ld45
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSPROPERTY
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKTOKENSYMBOL$ANSISTRING
EXTERN	_$CLASSES$_Ld68
EXTERN	CLASSES$_$TPARSER_$__$$_TOKENCOMPONENTIDENT$$ANSISTRING
EXTERN	_$CLASSES$_Ld52
EXTERN	_$CLASSES$_Ld49
EXTERN	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
EXTERN	_$CLASSES$_Ld50
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITESTRING$ANSISTRING
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITELSTRING$ANSISTRING
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSWIDESTRING$WIDESTRING
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	fpc_ansistr_concat
EXTERN	CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEEXTENDED$EXTENDED
EXTERN	CLASSES$_$TPARSER_$__$$_TOKENFLOAT$$EXTENDED
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
EXTERN	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEINTEGER$INT64
EXTERN	CLASSES$_$TPARSER_$__$$_TOKENINT$$INT64
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
