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
	GLOBAL SYSUTILS_$$_EXTRACTFILEDRIVE$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_EXTRACTFILEDRIVE$RAWBYTESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-24],0
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
		jne	..@j394
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j402
		mov	bx,word [bx-2]
..@j402:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,0
		jl	..@j403
		jg	..@j404
		cmp	ax,2
		jb	..@j403
		jmp	..@j404
..@j403:
		jmp	..@j394
..@j404:
		mov	bx,word [bp+4]
		mov	al,byte [bx+1]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j409
		test	al,0
		jmp	..@j410
..@j409:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS+bx],ax
..@j410:
		mov	al,0
		je	..@j411
		inc	ax
..@j411:
		test	al,al
		jne	..@j405
		jmp	..@j406
..@j405:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-24]
		push	ax
		push	word [bp+4]
		mov	ax,1
		push	ax
		mov	ax,2
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-24]
		call	fpc_ansistr_assign
		jmp	..@j424
..@j406:
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j430
		test	al,0
		jmp	..@j431
..@j430:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
..@j431:
		mov	al,0
		je	..@j432
		inc	ax
..@j432:
		test	al,al
		jne	..@j427
		jmp	..@j426
..@j427:
		mov	bx,word [bp+4]
		mov	al,byte [bx+1]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j435
		test	al,0
		jmp	..@j436
..@j435:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
..@j436:
		mov	al,0
		je	..@j437
		inc	ax
..@j437:
		test	al,al
		jne	..@j425
		jmp	..@j426
..@j425:
		mov	word [bp-4],2
		mov	word [bp-2],0
		jmp	..@j441
	ALIGN 2
..@j440:
		add	word [bp-4],1
		adc	word [bp-2],0
..@j441:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,word [bp-6]
		jl	..@j443
		jg	..@j442
		cmp	dx,word [bp-8]
		jb	..@j443
		jmp	..@j442
		jmp	..@j442
..@j443:
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		mov	si,ax
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j448
		test	al,0
		jmp	..@j449
..@j448:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+si],ax
..@j449:
		mov	al,0
		je	..@j450
		inc	ax
..@j450:
		test	al,al
		je	..@j440
		jmp	..@j442
..@j442:
		add	word [bp-4],1
		adc	word [bp-2],0
		jmp	..@j452
	ALIGN 2
..@j451:
		add	word [bp-4],1
		adc	word [bp-2],0
..@j452:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,word [bp-6]
		jl	..@j454
		jg	..@j453
		cmp	ax,word [bp-8]
		jb	..@j454
		jmp	..@j453
		jmp	..@j453
..@j454:
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		mov	si,ax
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j459
		test	al,0
		jmp	..@j460
..@j459:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+si],ax
..@j460:
		mov	al,0
		je	..@j461
		inc	ax
..@j461:
		test	al,al
		je	..@j451
		jmp	..@j453
..@j453:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-24]
		push	ax
		push	word [bp+4]
		mov	ax,1
		push	ax
		push	word [bp-4]
		call	fpc_ansistr_copy
		push	word [bp-24]
		call	fpc_ansistr_assign
..@j426:
..@j424:
..@j394:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j395
		call	FPC_RERAISE
..@j395:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	fpc_ansistr_copy
EXTERN	TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
