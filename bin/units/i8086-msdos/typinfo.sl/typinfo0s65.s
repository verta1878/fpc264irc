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
	GLOBAL TYPINFO_$$_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING
TYPINFO_$$_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,278
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
		jne	..@j1646
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	al,byte [bx]
		cmp	al,7
		jb	..@j1649
		sub	al,7
		je	..@j1652
		sub	al,2
		je	..@j1653
		dec	al
		je	..@j1650
		sub	al,14
		je	..@j1651
		jmp	..@j1649
..@j1650:
		push	word [bp+8]
		push	word [bp+6]
		lea	ax,[bp-20]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-20]
		call	TYPINFO_$$_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING
		jmp	..@j1648
..@j1651:
		push	word [bp+8]
		push	word [bp+6]
		lea	ax,[bp-22]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-22]
		call	TYPINFO_$$_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING
		jmp	..@j1648
..@j1652:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		test	ax,ax
		je	..@j1676
		sub	ax,1
		jb	..@j1675
		sub	ax,1
		jbe	..@j1677
		jmp	..@j1675
..@j1676:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	dx,0
		mov	dx,word [bp+8]
		add	dx,ax
		push	dx
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_to_shortstr
		jmp	..@j1674
..@j1677:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		cmp	ax,1
		je	..@j1684
		jmp	..@j1685
..@j1684:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		jmp	..@j1688
..@j1685:
		mov	si,word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [si+4]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j1688:
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j1695
		jmp	..@j1696
..@j1695:
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		lea	ax,[bp-278]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-278]
		push	ax
		mov	ax,word [bp-4]
		call	ax
		jmp	..@j1709
..@j1696:
		push	word [bp-2]
		lea	ax,[bp-278]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-278]
		push	ax
		mov	ax,word [bp-4]
		call	ax
..@j1709:
		jmp	..@j1674
..@j1675:
..@j1674:
		jmp	..@j1648
..@j1653:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		test	ax,ax
		je	..@j1722
		sub	ax,1
		jb	..@j1721
		sub	ax,1
		jbe	..@j1723
		jmp	..@j1721
..@j1722:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	dx,0
		mov	dx,word [bp+8]
		add	dx,ax
		push	dx
		push	word [bp+4]
		call	fpc_ansistr_assign
		jmp	..@j1720
..@j1723:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		cmp	ax,1
		je	..@j1728
		jmp	..@j1729
..@j1728:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		jmp	..@j1732
..@j1729:
		mov	si,word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [si+4]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j1732:
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j1739
		jmp	..@j1740
..@j1739:
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		push	word [bp+4]
		mov	ax,word [bp-4]
		call	ax
		jmp	..@j1747
..@j1740:
		push	word [bp-2]
		push	word [bp+4]
		mov	ax,word [bp-4]
		call	ax
..@j1747:
		jmp	..@j1720
..@j1721:
..@j1720:
		jmp	..@j1648
..@j1649:
..@j1648:
..@j1646:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-20]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1647
		call	FPC_RERAISE
..@j1647:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_to_shortstr
EXTERN	TYPINFO_$$_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING
EXTERN	TYPINFO_$$_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
