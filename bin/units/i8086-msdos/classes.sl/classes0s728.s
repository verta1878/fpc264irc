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
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READOBJECT$ANSISTRING
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READOBJECT$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,34
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
		mov	word [bp-4],0
		mov	word [bp-6],0
		mov	word [bp-34],0
		mov	word [bp-26],0
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j15569
		mov	bx,word [bp+6]
		push	word [bx+10]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		and	al,240
		cmp	al,240
		je	..@j15575
		jmp	..@j15576
..@j15575:
		mov	al,byte [bp-1]
		mov	ah,0
		and	ax,2
		test	ax,ax
		jne	..@j15577
		jmp	..@j15578
..@j15577:
		mov	ax,word [bp+6]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READINT$$INT64
		mov	word [bp-10],dx
		mov	word [bp-8],cx
..@j15578:
		jmp	..@j15583
..@j15576:
		mov	byte [bp-1],0
		mov	bx,word [bp+6]
		push	word [bx+10]
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	bx,word [bx]
		mov	ax,word [bx+68]
		call	ax
..@j15583:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READSSTR$$ANSISTRING
		push	word [bp-26]
		call	fpc_ansistr_assign
		lea	ax,[bp-6]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READSSTR$$ANSISTRING
		push	word [bp-26]
		call	fpc_ansistr_assign
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
		mov	al,byte [bp-1]
		mov	ah,0
		and	ax,1
		test	ax,ax
		jne	..@j15612
		jmp	..@j15613
..@j15612:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$CLASSES$_Ld39
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
		jmp	..@j15618
..@j15613:
		mov	al,byte [bp-1]
		mov	ah,0
		and	ax,4
		test	ax,ax
		jne	..@j15619
		jmp	..@j15620
..@j15619:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$CLASSES$_Ld40
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
		jmp	..@j15625
..@j15620:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$CLASSES$_Ld41
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
..@j15625:
..@j15618:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$CLASSES$_Ld42
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
		cmp	word [bp-6],0
		jne	..@j15634
		jmp	..@j15635
..@j15634:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		push	word [bp-6]
		mov	ax,word _$CLASSES$_Ld43
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-26]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
..@j15635:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-4]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
		mov	al,byte [bp-1]
		mov	ah,0
		and	ax,2
		test	ax,ax
		jne	..@j15652
		jmp	..@j15653
..@j15652:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		mov	ax,word _$CLASSES$_Ld13
		mov	word [bp-32],ax
		lea	ax,[bp-34]
		push	ax
		push	word [bp-8]
		push	word [bp-10]
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		mov	ax,word [bp-34]
		mov	word [bp-30],ax
		mov	ax,word _$CLASSES$_Ld14
		mov	word [bp-28],ax
		lea	ax,[bp-32]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		push	word [bp-26]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
..@j15653:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld44
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-26]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READPROPLIST$ANSISTRING
		jmp	..@j15687
	ALIGN 2
..@j15686:
		mov	bx,word [bp+6]
		push	word [bx+10]
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	bx,word [bx]
		mov	ax,word [bx+68]
		call	ax
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld44
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-26]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READOBJECT$ANSISTRING
..@j15687:
		mov	bx,word [bp+6]
		push	word [bx+10]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		test	al,al
		jne	..@j15686
		jmp	..@j15688
..@j15688:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld45
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-26]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
..@j15569:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-34]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j15570
		call	FPC_RERAISE
..@j15570:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	_$CLASSES$_Ld45
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READPROPLIST$ANSISTRING
EXTERN	_$CLASSES$_Ld44
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$CLASSES$_Ld14
EXTERN	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
EXTERN	_$CLASSES$_Ld13
EXTERN	fpc_ansistr_concat
EXTERN	_$CLASSES$_Ld43
EXTERN	fpc_ansistr_decr_ref
EXTERN	_$CLASSES$_Ld42
EXTERN	_$CLASSES$_Ld41
EXTERN	_$CLASSES$_Ld40
EXTERN	_$CLASSES$_Ld39
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READSSTR$$ANSISTRING
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READINT$$INT64
EXTERN	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
