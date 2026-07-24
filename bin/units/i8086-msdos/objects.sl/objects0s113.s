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
	GLOBAL OBJECTS$_$TRESOURCEFILE_$__$$_INIT$PSTREAM$$LONGBOOL
OBJECTS$_$TRESOURCEFILE_$__$$_INIT$PSTREAM$$LONGBOOL:
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
		je	..@j2573
		jmp	..@j2574
..@j2573:
		jmp	..@j2563
..@j2574:
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
		jne	..@j2577
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	OBJECTS$_$TOBJECT_$__$$_INIT$$LONGBOOL
		mov	byte [bp-1],0
		cmp	word [bp+4],0
		jne	..@j2587
		jmp	..@j2588
..@j2587:
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+8]
		call	ax
		mov	bx,word [bp+8]
		mov	word [bx+5],ax
		mov	word [bx+7],dx
	ALIGN 2
..@j2595:
		mov	byte [bp-2],1
		mov	ax,word [bp+8]
		mov	word [bp-40],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+10]
		call	ax
		sub	ax,8
		sbb	dx,0
		mov	bx,word [bp-40]
		cmp	dx,word [bx+7]
		jg	..@j2600
		jl	..@j2601
		mov	bx,word [bp-40]
		cmp	ax,word [bx+5]
		jae	..@j2600
		jmp	..@j2601
		jmp	..@j2601
..@j2600:
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+7]
		push	word [bx+5]
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+20]
		call	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		lea	ax,[bp-10]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,8
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	ax,word [bp-10]
		cmp	ax,16966
		jb	..@j2615
		sub	ax,16966
		je	..@j2617
		sub	ax,6151
		je	..@j2616
		jmp	..@j2615
..@j2616:
		mov	ax,word [bp-8]
		neg	ax
		and	ax,511
		cwd
		mov	bx,ax
		mov	ax,dx
		mov	si,word [bp-6]
		mov	dx,0
		mov	cx,9
..@j2618:
		shl	si,1
		rcl	dx,1
		loop	..@j2618
		sub	si,bx
		sbb	dx,ax
		mov	bx,word [bp+8]
		add	word [bx+5],si
		adc	word [bx+7],dx
		mov	byte [bp-2],0
		jmp	..@j2614
..@j2617:
		cmp	word [bp-8],21072
		je	..@j2621
		jmp	..@j2622
..@j2621:
		mov	byte [bp-1],1
		jmp	..@j2625
..@j2622:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		add	ax,8
		adc	dx,0
		mov	bx,word [bp+8]
		add	word [bx+5],ax
		adc	word [bx+7],dx
		mov	byte [bp-2],0
..@j2625:
		jmp	..@j2614
..@j2615:
..@j2614:
..@j2601:
		cmp	byte [bp-2],0
		jne	..@j2597
		jmp	..@j2595
..@j2597:
..@j2588:
		cmp	byte [bp-1],0
		jne	..@j2628
		jmp	..@j2629
..@j2628:
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+8]
		mov	dx,word [bx+5]
		mov	ax,word [bx+7]
		add	dx,8
		adc	ax,0
		push	ax
		push	dx
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+20]
		call	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+9]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		mov	si,word [bp+8]
		mov	bx,word [bp+8]
		mov	dx,word [si+5]
		mov	cx,word [si+7]
		mov	si,word [bx+9]
		mov	ax,word [bx+11]
		add	si,dx
		adc	ax,cx
		push	ax
		push	si
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+20]
		call	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+13]
		push	ax
		mov	ax,word VMT_$OBJECTS_$$_TRESOURCECOLLECTION
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		call	OBJECTS$_$TSORTEDCOLLECTION_$__$$_LOAD$TSTREAM$$LONGBOOL
		jmp	..@j2650
..@j2629:
		mov	bx,word [bp+8]
		mov	word [bx+9],12
		mov	word [bx+11],0
		mov	bx,word [bp+8]
		lea	ax,[bx+13]
		push	ax
		mov	ax,word VMT_$OBJECTS_$$_TRESOURCECOLLECTION
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,8
		push	ax
		call	OBJECTS$_$TSORTEDCOLLECTION_$__$$_INIT$LONGINT$LONGINT$$LONGBOOL
..@j2650:
..@j2577:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2579
		mov	ax,1
		push	ax
		lea	ax,[bp-36]
		push	ax
		lea	ax,[bp-30]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2661
		cmp	word [bp+6],0
		jne	..@j2662
		jmp	..@j2663
..@j2662:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j2663:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j2661:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2668
		call	FPC_RAISE_NESTED
..@j2668:
		call	FPC_DONEEXCEPTION
		jmp	..@j2579
..@j2579:
..@j2563:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	OBJECTS$_$TSORTEDCOLLECTION_$__$$_INIT$LONGINT$LONGINT$$LONGBOOL
EXTERN	OBJECTS$_$TSORTEDCOLLECTION_$__$$_LOAD$TSTREAM$$LONGBOOL
EXTERN	VMT_$OBJECTS_$$_TRESOURCECOLLECTION
EXTERN	OBJECTS$_$TOBJECT_$__$$_INIT$$LONGBOOL
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
