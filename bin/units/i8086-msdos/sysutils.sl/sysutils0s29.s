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
	GLOBAL SYSUTILS_$$_EXTRACTRELATIVEPATH$RAWBYTESTRING$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_EXTRACTRELATIVEPATH$RAWBYTESTRING$RAWBYTESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,586
		mov	word [bp-2],0
		mov	word [bp-4],0
		mov	word [bp-568],0
		mov	word [bp-566],0
		mov	word [bp-564],0
		mov	word [bp-562],0
		mov	word [bp-560],0
		mov	ax,1
		push	ax
		lea	ax,[bp-556]
		push	ax
		lea	ax,[bp-550]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1487
		lea	ax,[bp-560]
		push	ax
		lea	ax,[bp-562]
		push	ax
		push	word [bp+6]
		call	SYSUTILS_$$_EXTRACTFILEDRIVE$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-562]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-560]
		lea	ax,[bp-562]
		push	ax
		lea	ax,[bp-564]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_EXTRACTFILEDRIVE$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-564]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-562]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j1489
		cmp	cx,0
		jne	..@j1489
		jmp	..@j1490
..@j1489:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		jmp	..@j1487
..@j1490:
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-566]
		push	ax
		lea	ax,[bp-568]
		push	ax
		push	word [bp+6]
		call	SYSUTILS_$$_EXTRACTFILEPATH$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-568]
		call	SYSUTILS_$$_EXCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-566]
		call	fpc_ansistr_assign
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-568]
		push	ax
		lea	ax,[bp-566]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_EXTRACTFILEPATH$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-566]
		call	SYSUTILS_$$_EXCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-568]
		call	fpc_ansistr_assign
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-286]
		push	ax
		mov	ax,128
		push	ax
		call	SYSUTILS_$$_GETDIRS$RAWBYTESTRING$array_of_PCHAR$$LONGINT
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-544]
		push	ax
		mov	ax,128
		push	ax
		call	SYSUTILS_$$_GETDIRS$RAWBYTESTRING$array_of_PCHAR$$LONGINT
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		mov	word [bp-16],1
		mov	word [bp-14],0
		jmp	..@j1558
	ALIGN 2
..@j1557:
		mov	si,word [bp-16]
		shl	si,1
		push	word [bp+si-546]
		mov	si,word [bp-16]
		shl	si,1
		push	word [bp+si-288]
		call	SYSUTILS_$$_STRICOMP$PCHAR$PCHAR$$SMALLINT
		test	ax,ax
		je	..@j1560
		jmp	..@j1561
..@j1560:
		add	word [bp-16],1
		adc	word [bp-14],0
		jmp	..@j1566
..@j1561:
		jmp	..@j1559
..@j1566:
..@j1558:
		mov	dx,word [bp-16]
		mov	ax,word [bp-14]
		cmp	ax,word [bp-10]
		jl	..@j1567
		jg	..@j1559
		cmp	dx,word [bp-12]
		jbe	..@j1567
		jmp	..@j1559
		jmp	..@j1559
..@j1567:
		mov	dx,word [bp-16]
		mov	ax,word [bp-14]
		cmp	ax,word [bp-6]
		jl	..@j1557
		jg	..@j1559
		cmp	dx,word [bp-8]
		jbe	..@j1557
		jmp	..@j1559
		jmp	..@j1559
..@j1559:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp-14]
		jg	..@j1572
		jl	..@j1573
		cmp	dx,word [bp-16]
		jae	..@j1572
		jmp	..@j1573
		jmp	..@j1573
..@j1572:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j1576
		mov	bx,word [bx-2]
..@j1576:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-24],cx
		mov	word [bp-22],ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,word [bp-16]
		mov	bx,word [bp-14]
		sub	ax,cx
		sbb	dx,bx
		add	ax,1
		adc	dx,0
		push	dx
		push	ax
		mov	ax,0
		push	ax
		mov	ax,3
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	bx,word [bp-24]
		mov	cx,word [bp-22]
		add	ax,bx
		adc	dx,cx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,word [bp-16]
		mov	bx,word [bp-14]
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-582],ax
		mov	word [bp-580],dx
		mov	word [bp-20],0
		mov	word [bp-18],0
		mov	ax,word [bp-580]
		cmp	ax,word [bp-18]
		jl	..@j1592
		jg	..@j1594
		mov	ax,word [bp-582]
		cmp	ax,word [bp-20]
		jb	..@j1592
..@j1594:
		sub	word [bp-20],1
		sbb	word [bp-18],0
	ALIGN 2
..@j1593:
		add	word [bp-20],1
		adc	word [bp-18],0
		mov	ax,word _$SYSUTILS$_Ld621+1
		push	ax
		mov	ax,word [bp+8]
		push	ax
		call	fpc_ansistr_unique
		mov	word [bp-578],ax
		mov	dx,word [bp-24]
		mov	ax,word [bp-22]
		mov	word [bp-576],dx
		mov	word [bp-574],ax
		add	word [bp-576],1
		adc	word [bp-574],0
		push	word [bp-18]
		push	word [bp-20]
		mov	ax,0
		push	ax
		mov	ax,3
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cx,ax
		mov	ax,dx
		add	cx,word [bp-576]
		adc	ax,word [bp-574]
		mov	si,cx
		mov	bx,word [bp-578]
		lea	ax,[bx+si-1]
		push	ax
		mov	ax,3
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-580]
		cmp	ax,word [bp-18]
		jg	..@j1593
		jl	..@j1609
		mov	ax,word [bp-582]
		cmp	ax,word [bp-20]
		ja	..@j1593
..@j1609:
..@j1592:
..@j1573:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,word [bp-14]
		jg	..@j1610
		jl	..@j1611
		cmp	ax,word [bp-16]
		jae	..@j1610
		jmp	..@j1611
		jmp	..@j1611
..@j1610:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j1614
		mov	bx,word [bx-2]
..@j1614:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-24],cx
		mov	word [bp-22],ax
		mov	cx,word [bp-12]
		mov	bx,word [bp-10]
		mov	dx,word [bp-16]
		mov	ax,word [bp-14]
		sub	cx,dx
		sbb	bx,ax
		add	cx,1
		adc	bx,0
		mov	dx,word [bp-24]
		mov	ax,word [bp-22]
		add	dx,cx
		adc	ax,bx
		mov	word [bp-28],dx
		mov	word [bp-26],ax
		mov	ax,word [bp-12]
		mov	word [bp-572],ax
		mov	ax,word [bp-10]
		mov	word [bp-570],ax
		mov	dx,word [bp-16]
		mov	ax,word [bp-14]
		mov	word [bp-20],dx
		mov	word [bp-18],ax
		mov	ax,word [bp-570]
		cmp	ax,word [bp-18]
		jl	..@j1620
		jg	..@j1622
		mov	ax,word [bp-572]
		cmp	ax,word [bp-20]
		jb	..@j1620
..@j1622:
		sub	word [bp-20],1
		sbb	word [bp-18],0
	ALIGN 2
..@j1621:
		add	word [bp-20],1
		adc	word [bp-18],0
		mov	ax,word [bp-20]
		mov	si,ax
		shl	si,1
		push	word [bp+si-546]
		call	fpc_pchar_length
		cwd
		mov	cx,ax
		mov	ax,dx
		add	word [bp-28],cx
		adc	word [bp-26],ax
		mov	ax,word [bp-570]
		cmp	ax,word [bp-18]
		jg	..@j1621
		jl	..@j1625
		mov	ax,word [bp-572]
		cmp	ax,word [bp-20]
		ja	..@j1621
..@j1625:
..@j1620:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-28]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp-12]
		mov	word [bp-586],ax
		mov	ax,word [bp-10]
		mov	word [bp-584],ax
		mov	dx,word [bp-16]
		mov	ax,word [bp-14]
		mov	word [bp-20],dx
		mov	word [bp-18],ax
		mov	ax,word [bp-584]
		cmp	ax,word [bp-18]
		jl	..@j1635
		jg	..@j1637
		mov	ax,word [bp-586]
		cmp	ax,word [bp-20]
		jb	..@j1635
..@j1637:
		sub	word [bp-20],1
		sbb	word [bp-18],0
	ALIGN 2
..@j1636:
		add	word [bp-20],1
		adc	word [bp-18],0
		mov	ax,word [bp-20]
		mov	si,ax
		shl	si,1
		push	word [bp+si-546]
		call	fpc_pchar_length
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-28],cx
		mov	word [bp-26],ax
		mov	ax,word [bp-20]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+si-546]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	ax,word [bp-24]
		mov	dx,word [bp-22]
		add	ax,1
		adc	dx,0
		mov	si,ax
		lea	ax,[bx+si-1]
		push	ax
		push	word [bp-28]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-28]
		mov	dx,word [bp-26]
		add	word [bp-24],ax
		adc	word [bp-22],dx
		mov	ax,word [bp+8]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	ax,word [bp-24]
		mov	dx,word [bp-22]
		add	ax,1
		adc	dx,0
		mov	si,ax
		mov	byte [bx+si-1],92
		add	word [bp-24],1
		adc	word [bp-22],0
		mov	ax,word [bp-584]
		cmp	ax,word [bp-18]
		jg	..@j1636
		jl	..@j1654
		mov	ax,word [bp-586]
		cmp	ax,word [bp-20]
		ja	..@j1636
..@j1654:
..@j1635:
..@j1611:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		lea	ax,[bp-568]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_EXTRACTFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-568]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j1487:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-568]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-566]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-564]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-562]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-560]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1488
		call	FPC_RERAISE
..@j1488:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat
EXTERN	SYSUTILS_$$_EXTRACTFILENAME$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	fpc_pchar_length
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_unique
EXTERN	_$SYSUTILS$_Ld621
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_mul_longint
EXTERN	SYSUTILS_$$_STRICOMP$PCHAR$PCHAR$$SMALLINT
EXTERN	SYSUTILS_$$_GETDIRS$RAWBYTESTRING$array_of_PCHAR$$LONGINT
EXTERN	SYSUTILS_$$_EXCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	SYSUTILS_$$_EXTRACTFILEPATH$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_compare_equal
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	SYSUTILS_$$_EXTRACTFILEDRIVE$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
