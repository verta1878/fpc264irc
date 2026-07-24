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
	GLOBAL SYSUTILS_$$_EXTRACTFILEEXT$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_EXTRACTFILEEXT$RAWBYTESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,118
		mov	word [bp-118],0
		mov	ax,1
		push	ax
		lea	ax,[bp-50]
		push	ax
		lea	ax,[bp-44]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j508
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j516
		mov	bx,word [bx-2]
..@j516:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
		push	ax
		mov	ax,word TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS
		push	ax
		lea	ax,[bp-116]
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_add_sets
		lea	ax,[bp-116]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld614
		push	ax
		lea	ax,[bp-84]
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_add_sets
		lea	di,[bp-36]
		push	ss
		pop	es
		lea	si,[bp-84]
		cld
		mov	cx,16
		rep
		movsw
		jmp	..@j536
	ALIGN 2
..@j535:
		sub	word [bp-4],1
		sbb	word [bp-2],0
..@j536:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j538
		jl	..@j537
		cmp	ax,0
		ja	..@j538
		jmp	..@j537
..@j538:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-36],ax
		mov	al,0
		je	..@j543
		inc	ax
..@j543:
		test	al,al
		je	..@j535
		jmp	..@j537
..@j537:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j546
		jl	..@j545
		cmp	ax,0
		ja	..@j546
		jmp	..@j545
..@j546:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],46
		je	..@j544
		jmp	..@j545
..@j544:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j549
		cmp	dx,1
		jne	..@j549
		jmp	..@j547
..@j549:
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,1
		sbb	dx,0
		mov	si,ax
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j550
		test	al,0
		jmp	..@j551
..@j550:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
..@j551:
		jne	..@j547
		jmp	..@j548
..@j547:
		mov	byte [bp-37],1
		jmp	..@j552
..@j548:
		mov	byte [bp-37],0
..@j552:
		cmp	byte [bp-37],0
		je	..@j553
		jmp	..@j555
..@j555:
		cmp	byte [TC_$SYSTEM_$$_FIRSTDOTATFILENAMESTARTISEXTENSION],0
		jne	..@j553
		jmp	..@j554
..@j553:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-118]
		push	ax
		push	word [bp+4]
		push	word [bp-4]
		mov	ax,32767
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-118]
		call	fpc_ansistr_assign
..@j554:
		jmp	..@j568
..@j545:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j568:
..@j508:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-118]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j509
		call	FPC_RERAISE
..@j509:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_copy
EXTERN	TC_$SYSTEM_$$_FIRSTDOTATFILENAMESTARTISEXTENSION
EXTERN	_$SYSUTILS$_Ld614
EXTERN	fpc_varset_add_sets
EXTERN	TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
