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
	GLOBAL CLASSES$_$TFILESTREAM_$__$$_CREATE$ANSISTRING$WORD$LONGWORD$$TFILESTREAM
CLASSES$_$TFILESTREAM_$__$$_CREATE$ANSISTRING$WORD$LONGWORD$$TFILESTREAM:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+12],1
		je	..@j1603
		jmp	..@j1604
..@j1603:
		push	word [bp+14]
		mov	bx,word [bp+14]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+14],ax
..@j1604:
		cmp	word [bp+14],0
		je	..@j1609
		jmp	..@j1610
..@j1609:
		jmp	..@j1601
..@j1610:
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
		jne	..@j1613
		mov	bx,word [bp+14]
		lea	ax,[bx+4]
		push	ax
		push	word [bp+10]
		call	fpc_ansistr_assign
		mov	ax,word [bp+8]
		and	ax,-256
		cmp	ax,0
		ja	..@j1622
		jmp	..@j1623
..@j1622:
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+4]
		call	SYSUTILS_$$_FILECREATE$RAWBYTESTRING$SMALLINT$SMALLINT$$WORD
		mov	bx,word [bp+14]
		mov	word [bx+2],ax
		jmp	..@j1632
..@j1623:
		push	word [bp+10]
		push	word [bp+8]
		call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$SMALLINT$$WORD
		mov	bx,word [bp+14]
		mov	word [bx+2],ax
..@j1632:
		mov	bx,word [bp+14]
		mov	ax,word [bx+2]
		cmp	ax,word [TC_$SYSUTILS_$$_FEINVALIDHANDLE]
		je	..@j1639
		jmp	..@j1640
..@j1639:
		cmp	word [bp+8],-256
		je	..@j1641
		jmp	..@j1642
..@j1641:
..@j1643:
		mov	ax,word VMT_$CLASSES_$$_EFCREATEERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SFCREATEERROR+2]
		mov	ax,word [bp+10]
		mov	dx,0
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	word [bp-20],11
		lea	ax,[bp-20]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j1643
		push	ax
		push	bp
		call	fpc_raiseexception
		jmp	..@j1660
..@j1642:
..@j1661:
		mov	ax,word VMT_$CLASSES_$$_EFOPENERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SFOPENERROR+2]
		mov	dx,word [bp+10]
		mov	ax,0
		mov	word [bp-18],dx
		mov	word [bp-16],ax
		mov	word [bp-20],11
		lea	ax,[bp-20]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j1661
		push	ax
		push	bp
		call	fpc_raiseexception
..@j1660:
..@j1640:
		cmp	word [bp+14],0
		jne	..@j1680
		jmp	..@j1679
..@j1680:
		cmp	word [bp+12],0
		jne	..@j1678
		jmp	..@j1679
..@j1678:
		push	word [bp+14]
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j1679:
..@j1613:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1615
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
		jne	..@j1683
		cmp	word [bp+12],0
		jne	..@j1684
		jmp	..@j1685
..@j1684:
		push	word [bp+14]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j1685:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j1683:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1690
		call	FPC_RAISE_NESTED
..@j1690:
		call	FPC_DONEEXCEPTION
		jmp	..@j1615
..@j1615:
..@j1601:
		mov	ax,word [bp+14]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	RESSTR_$RTLCONSTS_$$_SFOPENERROR
EXTERN	VMT_$CLASSES_$$_EFOPENERROR
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SFCREATEERROR
EXTERN	VMT_$CLASSES_$$_EFCREATEERROR
EXTERN	TC_$SYSUTILS_$$_FEINVALIDHANDLE
EXTERN	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$SMALLINT$$WORD
EXTERN	SYSUTILS_$$_FILECREATE$RAWBYTESTRING$SMALLINT$SMALLINT$$WORD
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
