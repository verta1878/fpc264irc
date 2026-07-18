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
	GLOBAL SYSUTILS_$$_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN
SYSUTILS_$$_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,50
		mov	word [bp-4],0
		mov	word [bp-42],0
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j7486
		lea	ax,[bp-4]
		push	ax
		push	word [bp+6]
		call	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
		push	word [bp-4]
		lea	ax,[bp-18]
		push	ax
		call	fpc_val_real_ansistr
		wait fstp	qword [bp-40]
		DB	09bh
		wait fld	qword [bp-40]
		wait fstp	qword [bp-16]
		DB	09bh
		mov	byte [bp-1],1
		cmp	word [bp-18],0
		je	..@j7500
		jmp	..@j7501
..@j7500:
		mov	bx,word [bp+4]
		wait fld	qword [bp-16]
		wait fldz
		wait fcompp
		fstsw	[bp-34]
		mov	ah,byte [bp-33]
		sahf
		mov	al,0
		jp	..@j7505
		je	..@j7504
..@j7505:
		inc	ax
..@j7504:
		mov	byte [bx],al
		jmp	..@j7506
..@j7501:
		call	SYSUTILS_$$_CHECKBOOLSTRS
		push	word [U_$SYSUTILS_$$_TRUEBOOLSTRS]
		call	fpc_dynarray_high
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-50],cx
		mov	word [bp-46],ax
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	ax,word [bp-46]
		cmp	ax,word [bp-6]
		jl	..@j7512
		jg	..@j7514
		mov	ax,word [bp-50]
		cmp	ax,word [bp-8]
		jb	..@j7512
..@j7514:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j7513:
		add	word [bp-8],1
		adc	word [bp-6],0
		push	word [bp-4]
		lea	ax,[bp-42]
		push	ax
		mov	bx,word [U_$SYSUTILS_$$_TRUEBOOLSTRS]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
		push	word [bp-42]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j7516
		cmp	cx,0
		jne	..@j7516
		jmp	..@j7515
..@j7515:
		mov	bx,word [bp+4]
		mov	byte [bx],1
		jmp	..@j7486
..@j7516:
		mov	ax,word [bp-46]
		cmp	ax,word [bp-6]
		jg	..@j7513
		jl	..@j7527
		mov	ax,word [bp-50]
		cmp	ax,word [bp-8]
		ja	..@j7513
..@j7527:
..@j7512:
		push	word [U_$SYSUTILS_$$_FALSEBOOLSTRS]
		call	fpc_dynarray_high
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-48],cx
		mov	word [bp-44],ax
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	ax,word [bp-44]
		cmp	ax,word [bp-6]
		jl	..@j7533
		jg	..@j7535
		mov	ax,word [bp-48]
		cmp	ax,word [bp-8]
		jb	..@j7533
..@j7535:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j7534:
		add	word [bp-8],1
		adc	word [bp-6],0
		push	word [bp-4]
		lea	ax,[bp-42]
		push	ax
		mov	bx,word [U_$SYSUTILS_$$_FALSEBOOLSTRS]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
		push	word [bp-42]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j7537
		cmp	cx,0
		jne	..@j7537
		jmp	..@j7536
..@j7536:
		mov	bx,word [bp+4]
		mov	byte [bx],0
		jmp	..@j7486
..@j7537:
		mov	ax,word [bp-44]
		cmp	ax,word [bp-6]
		jg	..@j7534
		jl	..@j7548
		mov	ax,word [bp-48]
		cmp	ax,word [bp-8]
		ja	..@j7534
..@j7548:
..@j7533:
		mov	byte [bp-1],0
..@j7506:
..@j7486:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-42]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j7487
		call	FPC_RERAISE
..@j7487:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$SYSUTILS_$$_FALSEBOOLSTRS
EXTERN	fpc_ansistr_compare_equal
EXTERN	fpc_dynarray_high
EXTERN	U_$SYSUTILS_$$_TRUEBOOLSTRS
EXTERN	SYSUTILS_$$_CHECKBOOLSTRS
EXTERN	fpc_val_real_ansistr
EXTERN	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
