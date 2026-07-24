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
	GLOBAL SYSTEM_$$_PUSHEXCEPTOBJECT$TOBJECT$NEARPOINTER$POINTER
SYSTEM_$$_PUSHEXCEPTOBJECT$TOBJECT$NEARPOINTER$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15464
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		call	ax
		jmp	..@j15465
..@j15464:
		mov	ax,word U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2
..@j15465:
		mov	word [bp-4],ax
		mov	ax,16
		push	ax
		call	fpc_getmem
		mov	word [bp-2],ax
		mov	si,word [bp-2]
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [si+4],ax
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	bx,word [bp-2]
		mov	ax,word [bp+8]
		mov	word [bx],ax
		mov	bx,word [bp-2]
		mov	ax,word [bp+6]
		mov	word [bx+2],ax
		mov	bx,word [bp-2]
		mov	word [bx+6],0
		mov	word [bx+8],0
		mov	ax,word [bp+4]
		mov	word [bp-18],ax
		mov	ax,word [bp+6]
		mov	word [bp-20],ax
		mov	word [bp-14],0
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-12],0
		mov	word [bp-10],0
		mov	word [bp-16],bp
		jmp	..@j15495
	ALIGN 2
..@j15494:
		mov	ax,word [bp-18]
		mov	word [bp-16],ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER
		cmp	word [bp-20],0
		je	..@j15503
		jmp	..@j15505
..@j15505:
		cmp	word [bp-18],0
		je	..@j15503
		jmp	..@j15504
..@j15503:
		jmp	..@j15496
..@j15504:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,word [bp-6]
		jg	..@j15506
		jl	..@j15507
		cmp	ax,word [bp-8]
		jae	..@j15506
		jmp	..@j15507
		jmp	..@j15507
..@j15506:
		add	word [bp-8],16
		adc	word [bp-6],0
		lea	ax,[bp-14]
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
..@j15507:
		mov	bx,word [bp-14]
		mov	ax,word [bp-12]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-20]
		mov	word [bx+si],ax
		add	word [bp-12],1
		adc	word [bp-10],0
..@j15495:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,word [TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT+2]
		jl	..@j15515
		jg	..@j15496
		cmp	ax,word [TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT]
		jb	..@j15515
		jmp	..@j15496
		jmp	..@j15496
..@j15515:
		mov	ax,word [bp-18]
		cmp	ax,word [bp-16]
		ja	..@j15514
		jmp	..@j15496
..@j15514:
		call	SYSTEM_$$_STACKTOP$$POINTER
		cmp	ax,word [bp-18]
		ja	..@j15494
		jmp	..@j15496
..@j15496:
		mov	bx,word [bp-2]
		mov	ax,word [bp-12]
		mov	word [bx+10],ax
		mov	ax,word [bp-10]
		mov	word [bx+12],ax
		mov	bx,word [bp-2]
		mov	ax,word [bp-14]
		mov	word [bx+14],ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_STACKTOP$$POINTER
EXTERN	TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER
EXTERN	fpc_getmem
EXTERN	U_$SYSTEM_$$_EXCEPTOBJECTSTACK
EXTERN	FPC_THREADVAR_RELOCATE
