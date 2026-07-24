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
	GLOBAL OBJECTS$_$TDOSSTREAM_$__$$_INIT$SHORTSTRING$WORD$$LONGBOOL
OBJECTS$_$TDOSSTREAM_$__$$_INIT$SHORTSTRING$WORD$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,288
		mov	dx,word [bp+6]
		lea	ax,[bp-260]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		push	word [bp+10]
		lea	ax,[bp+8]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_constructor
		mov	word [bp+10],ax
		cmp	word [bp+10],0
		je	..@j585
		jmp	..@j586
..@j585:
		jmp	..@j575
..@j586:
		mov	ax,1
		push	ax
		lea	ax,[bp-272]
		push	ax
		lea	ax,[bp-266]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j589
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		call	OBJECTS$_$TSTREAM_$__$$_INIT$$LONGBOOL
		lea	ax,[bp-260]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-260]
		push	ax
		mov	ax,word _$OBJECTS$_Ld1
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-259]
		push	ax
		mov	bx,word [bp+10]
		lea	ax,[bx+17]
		push	ax
		mov	al,byte [bp-260]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+10]
		mov	ax,word [U_$OBJECTS_$$_INVALIDHANDLE]
		mov	word [bx+15],ax
		mov	bx,word [bp+10]
		lea	ax,[bx+273]
		push	ax
		lea	ax,[bp-260]
		push	ax
		call	SYSTEM_$$_ASSIGN$file$SHORTSTRING
		cmp	word [bp+4],15360
		je	..@j617
		jmp	..@j618
..@j617:
		mov	bx,word [bp+10]
		lea	ax,[bx+273]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_REWRITE$file$LONGINT
		jmp	..@j623
..@j618:
		mov	al,byte [TC_$SYSTEM_$$_FILEMODE]
		mov	byte [bp-1],al
		mov	ax,word [bp+4]
		and	ax,255
		mov	byte [TC_$SYSTEM_$$_FILEMODE],al
		mov	bx,word [bp+10]
		lea	ax,[bx+273]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_RESET$file$LONGINT
		mov	al,byte [bp-1]
		mov	byte [TC_$SYSTEM_$$_FILEMODE],al
..@j623:
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+273]
		mov	word [si+15],ax
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j638
		jmp	..@j639
..@j638:
		mov	bx,word [bp+10]
		lea	ax,[bx+273]
		push	ax
		call	SYSTEM_$$_FILESIZE$file$$INT64
		mov	bx,word [bp+10]
		mov	word [bx+6],dx
		mov	word [bx+8],cx
..@j639:
		cmp	word [bp-4],0
		je	..@j644
		jmp	..@j645
..@j644:
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-4],ax
..@j645:
		cmp	word [bp-4],0
		jne	..@j648
		jmp	..@j649
..@j648:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-2
		push	ax
		push	word [bp-4]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		jmp	..@j656
..@j649:
		mov	bx,word [bp+10]
		mov	word [bx+2],0
..@j656:
..@j589:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j591
		mov	ax,1
		push	ax
		lea	ax,[bp-286]
		push	ax
		lea	ax,[bp-280]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j659
		cmp	word [bp+8],0
		jne	..@j660
		jmp	..@j661
..@j660:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j661:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j659:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j666
		call	FPC_RAISE_NESTED
..@j666:
		call	FPC_DONEEXCEPTION
		jmp	..@j591
..@j591:
..@j575:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_FILESIZE$file$$INT64
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_RESET$file$LONGINT
EXTERN	TC_$SYSTEM_$$_FILEMODE
EXTERN	SYSTEM_$$_REWRITE$file$LONGINT
EXTERN	SYSTEM_$$_ASSIGN$file$SHORTSTRING
EXTERN	U_$OBJECTS_$$_INVALIDHANDLE
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_shortstr_concat
EXTERN	_$OBJECTS$_Ld1
EXTERN	OBJECTS$_$TSTREAM_$__$$_INIT$$LONGBOOL
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
EXTERN	fpc_shortstr_to_shortstr
