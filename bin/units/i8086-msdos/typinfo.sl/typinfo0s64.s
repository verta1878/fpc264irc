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
	GLOBAL TYPINFO_$$_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING
TYPINFO_$$_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,280
		mov	word [bp-24],0
		mov	word [bp-22],0
		mov	word [bp-20],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1502
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	al,byte [bx]
		cmp	al,7
		jb	..@j1509
		sub	al,7
		je	..@j1512
		sub	al,2
		je	..@j1513
		dec	al
		je	..@j1510
		sub	al,14
		je	..@j1511
		jmp	..@j1509
..@j1510:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-22]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING
		push	word [bp-22]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-20]
		call	fpc_ansistr_assign
		jmp	..@j1508
..@j1511:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-24]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING
		push	word [bp-24]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-20]
		call	fpc_ansistr_assign
		jmp	..@j1508
..@j1512:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		test	ax,ax
		jl	..@j1547
		test	ax,ax
		je	..@j1548
		dec	ax
		jl	..@j1547
		dec	ax
		jle	..@j1549
		jmp	..@j1547
..@j1548:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-20]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	dx,0
		mov	dx,word [bp+6]
		add	dx,ax
		push	dx
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-20]
		call	fpc_ansistr_assign
		jmp	..@j1546
..@j1549:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		cmp	ax,1
		je	..@j1560
		jmp	..@j1561
..@j1560:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		jmp	..@j1564
..@j1561:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [si+2]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j1564:
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j1571
		jmp	..@j1572
..@j1571:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-20]
		push	ax
		push	word [bp-2]
		lea	ax,[bp-280]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp-4]
		call	ax
		lea	ax,[bp-280]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-20]
		call	fpc_ansistr_assign
		jmp	..@j1589
..@j1572:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-20]
		push	ax
		push	word [bp-2]
		lea	ax,[bp-280]
		push	ax
		mov	ax,word [bp-4]
		call	ax
		lea	ax,[bp-280]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-20]
		call	fpc_ansistr_assign
..@j1589:
		jmp	..@j1546
..@j1547:
..@j1546:
		jmp	..@j1508
..@j1513:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		test	ax,ax
		jl	..@j1605
		test	ax,ax
		je	..@j1606
		dec	ax
		jl	..@j1605
		dec	ax
		jle	..@j1607
		jmp	..@j1605
..@j1606:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	dx,0
		mov	bx,word [bp+6]
		add	bx,ax
		push	word [bx]
		call	fpc_ansistr_assign
		jmp	..@j1604
..@j1607:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		cmp	ax,1
		je	..@j1612
		jmp	..@j1613
..@j1612:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		jmp	..@j1616
..@j1613:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [si+2]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j1616:
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j1623
		jmp	..@j1624
..@j1623:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-2]
		lea	ax,[bp-20]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp-4]
		call	ax
		push	word [bp-20]
		call	fpc_ansistr_assign
		jmp	..@j1635
..@j1624:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-2]
		lea	ax,[bp-20]
		push	ax
		mov	ax,word [bp-4]
		call	ax
		push	word [bp-20]
		call	fpc_ansistr_assign
..@j1635:
		jmp	..@j1604
..@j1605:
..@j1604:
		jmp	..@j1508
..@j1509:
..@j1508:
..@j1502:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-22]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1503
		call	FPC_RERAISE
..@j1503:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_shortstr_to_ansistr
EXTERN	TYPINFO_$$_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING
EXTERN	fpc_unicodestr_to_ansistr
EXTERN	TYPINFO_$$_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
