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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_LOAD$TSTREAM$$LONGBOOL
OBJECTS$_$TCOLLECTION_$__$$_LOAD$TSTREAM$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,40
		push	word [bp+8]
		lea	ax,[bp+6]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_constructor
		mov	word [bp+8],ax
		cmp	word [bp+8],0
		je	..@j1629
		jmp	..@j1630
..@j1629:
		jmp	..@j1619
..@j1630:
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
		jne	..@j1633
		mov	bx,word [bp+4]
		cmp	byte [bx+14],0
		jne	..@j1637
		jmp	..@j1638
..@j1637:
		mov	bx,word [bp+8]
		mov	word [bx+4],0
		mov	word [bx+6],0
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	bx,word [bp+8]
		mov	word [bx+8],0
		mov	word [bx+10],0
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+8]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	bx,word [bp+8]
		mov	word [bx+12],0
		mov	word [bx+14],0
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+12]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		jmp	..@j1663
..@j1638:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+8]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+12]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j1663:
		mov	bx,word [bp+8]
		mov	word [bx+2],0
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		mov	ax,word [bx+6]
		mov	word [bp-2],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+8]
		mov	word [bp-8],ax
		mov	ax,word [bx+10]
		mov	word [bp-6],ax
		mov	bx,word [bp+8]
		mov	word [bx+4],0
		mov	word [bx+6],0
		mov	bx,word [bp+8]
		mov	word [bx+8],0
		mov	word [bx+10],0
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+16]
		call	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-4]
		mov	word [bx+4],ax
		mov	ax,word [bp-2]
		mov	word [bx+6],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-40],ax
		mov	word [bp-38],dx
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	ax,word [bp-38]
		cmp	ax,word [bp-6]
		jl	..@j1701
		jg	..@j1703
		mov	ax,word [bp-40]
		cmp	ax,word [bp-8]
		jb	..@j1701
..@j1703:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j1702:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+10]
		call	ax
		push	ax
		call	OBJECTS$_$TCOLLECTION_$__$$_ATPUT$LONGINT$POINTER
		mov	ax,word [bp-38]
		cmp	ax,word [bp-6]
		jg	..@j1702
		jl	..@j1714
		mov	ax,word [bp-40]
		cmp	ax,word [bp-8]
		ja	..@j1702
..@j1714:
..@j1701:
..@j1633:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1635
		mov	ax,1
		push	ax
		lea	ax,[bp-34]
		push	ax
		lea	ax,[bp-28]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1715
		cmp	word [bp+6],0
		jne	..@j1716
		jmp	..@j1717
..@j1716:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j1717:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j1715:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1722
		call	FPC_RAISE_NESTED
..@j1722:
		call	FPC_DONEEXCEPTION
		jmp	..@j1635
..@j1635:
..@j1619:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_ATPUT$LONGINT$POINTER
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
