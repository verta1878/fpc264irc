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
	GLOBAL DOS_$$_FSEARCH$SHORTSTRING$SHORTSTRING$$SHORTSTRING
DOS_$$_FSEARCH$SHORTSTRING$SHORTSTRING$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,1314
		mov	dx,word [bp+6]
		lea	ax,[bp-800]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		mov	dx,word [bp+4]
		lea	ax,[bp-1056]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-800]
		push	ax
		mov	ax,47
		push	ax
		lea	ax,[bp-288]
		push	ax
		call	DOS_$$_FINDFIRST$SHORTSTRING$WORD$SEARCHREC
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1550
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j1551
..@j1550:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j1551:
		cmp	word [bx],0
		je	..@j1548
		jmp	..@j1549
..@j1548:
		lea	ax,[bp-288]
		push	ax
		call	DOS_$$_FINDCLOSE$SEARCHREC
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-800]
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j1540
..@j1549:
		mov	ax,63
		push	ax
		lea	ax,[bp-800]
		push	ax
		call	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
		test	ax,ax
		jne	..@j1560
		jmp	..@j1562
..@j1562:
		mov	ax,42
		push	ax
		lea	ax,[bp-800]
		push	ax
		call	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
		test	ax,ax
		jne	..@j1560
		jmp	..@j1561
..@j1560:
		mov	bx,word [bp+8]
		mov	byte [bx],0
		jmp	..@j1573
..@j1561:
		lea	ax,[bp-1056]
		push	ax
		call	DOS_$$_DODIRSEPARATORS$SHORTSTRING
	ALIGN 2
..@j1576:
		mov	ax,59
		push	ax
		lea	ax,[bp-1056]
		push	ax
		call	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j1585
		jmp	..@j1586
..@j1585:
		lea	ax,[bp-544]
		push	ax
		lea	ax,[bp-1056]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [bp-2]
		dec	ax
		push	ax
		call	fpc_shortstr_copy
		lea	ax,[bp-1056]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
		jmp	..@j1603
..@j1586:
		lea	ax,[bp-544]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-1056]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	byte [bp-1056],0
..@j1603:
		cmp	byte [bp-544],0
		jne	..@j1614
		jmp	..@j1613
..@j1614:
		mov	al,byte [bp-544]
		mov	byte [bp-1314],al
		mov	byte [bp-1313],0
		mov	si,word [bp-1314]
		mov	al,byte [bp+si-544]
		mov	ah,0
		cmp	ax,58
		je	..@j1615
		cmp	ax,92
		je	..@j1615
..@j1615:
		jne	..@j1612
		jmp	..@j1613
..@j1612:
		lea	ax,[bp-544]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-544]
		push	ax
		mov	ax,word _$DOS$_Ld1
		push	ax
		call	fpc_shortstr_concat
..@j1613:
		lea	ax,[bp-1312]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-544]
		push	ax
		lea	ax,[bp-800]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-1312]
		push	ax
		mov	ax,47
		push	ax
		lea	ax,[bp-288]
		push	ax
		call	DOS_$$_FINDFIRST$SHORTSTRING$WORD$SEARCHREC
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1640
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j1641
..@j1640:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j1641:
		cmp	word [bx],0
		je	..@j1638
		jmp	..@j1639
..@j1638:
		lea	ax,[bp-544]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-544]
		push	ax
		lea	ax,[bp-800]
		push	ax
		call	fpc_shortstr_concat
		jmp	..@j1650
..@j1639:
		mov	byte [bp-544],0
..@j1650:
		cmp	byte [bp-1056],0
		je	..@j1578
		jmp	..@j1653
..@j1653:
		cmp	byte [bp-544],0
		jne	..@j1578
		jmp	..@j1576
..@j1578:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-544]
		push	ax
		call	fpc_shortstr_to_shortstr
..@j1573:
		lea	ax,[bp-288]
		push	ax
		call	DOS_$$_FINDCLOSE$SEARCHREC
..@j1540:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_shortstr_concat
EXTERN	_$DOS$_Ld1
EXTERN	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
EXTERN	fpc_shortstr_copy
EXTERN	DOS_$$_DODIRSEPARATORS$SHORTSTRING
EXTERN	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
EXTERN	DOS_$$_FINDCLOSE$SEARCHREC
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	DOS_$$_FINDFIRST$SHORTSTRING$WORD$SEARCHREC
EXTERN	fpc_shortstr_to_shortstr
