BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TREADER_$__$$_READROOTCOMPONENT$TCOMPONENT$$TCOMPONENT
CLASSES$_$TREADER_$__$$_READROOTCOMPONENT$TCOMPONENT$$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,64
		mov	word [bp-10],0
		mov	word [bp-12],0
		mov	word [bp-14],0
		mov	word [bp-50],0
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j20432
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-40]
		push	ax
		lea	ax,[bp-34]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j20440
		mov	bx,word [bp+6]
		push	word [bx+9]
		lea	ax,[bp-7]
		push	ax
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-12]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		cmp	word [bp+4],0
		je	..@j20454
		jmp	..@j20455
..@j20454:
		push	word [bp-10]
		call	CLASSES_$$_FINDCLASS$ANSISTRING$$TPERSISTENTCLASS
		mov	word [bp-62],ax
		push	word [bp-62]
		mov	ax,1
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp-62]
		mov	ax,word [bx+98]
		call	ax
		mov	word [bp-2],ax
		push	word [bp-2]
		push	word [bp-12]
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+76]
		call	ax
		jmp	..@j20472
..@j20455:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		test	word [bx+22],16
		je	..@j20475
		jmp	..@j20476
..@j20475:
		mov	bx,word [bp-2]
		mov	si,word [bp-2]
		mov	ax,word [si+22]
		or	ax,3
		mov	word [bx+22],ax
		mov	word [bp-6],0
		lea	ax,[bp-14]
		push	ax
		push	word [bp-12]
		call	fpc_ansistr_assign
		jmp	..@j20486
	ALIGN 2
..@j20485:
		inc	word [bp-6]
		lea	ax,[bp-14]
		push	ax
		mov	ax,word [bp-12]
		mov	word [bp-48],ax
		mov	ax,word _$CLASSES$_Ld72
		mov	word [bp-46],ax
		lea	ax,[bp-50]
		push	ax
		mov	ax,word [bp-6]
		cwd
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		mov	ax,word [bp-50]
		mov	word [bp-44],ax
		lea	ax,[bp-48]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
..@j20486:
		push	word [bp-14]
		call	CLASSES_$$_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT
		test	ax,ax
		jne	..@j20485
		jmp	..@j20487
..@j20487:
		push	word [bp-2]
		push	word [bp-14]
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+76]
		call	ax
..@j20476:
..@j20472:
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx+2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx+4],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j20512
		push	word [U_$CLASSES_$$_GLOBALLOADED+2]
		push	word [U_$CLASSES_$$_GLOBALLOADED]
		call	ax
		mov	bx,ax
		jmp	..@j20513
..@j20512:
		mov	bx,word U_$CLASSES_$$_GLOBALLOADED+2
..@j20513:
		cmp	word [bx],0
		jne	..@j20510
		jmp	..@j20511
..@j20510:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j20516
		push	word [U_$CLASSES_$$_GLOBALLOADED+2]
		push	word [U_$CLASSES_$$_GLOBALLOADED]
		call	ax
		mov	bx,ax
		jmp	..@j20517
..@j20516:
		mov	bx,word U_$CLASSES_$$_GLOBALLOADED+2
..@j20517:
		mov	si,word [bp+6]
		mov	ax,word [bx]
		mov	word [si+17],ax
		jmp	..@j20518
..@j20511:
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+6]
		mov	word [bx+17],ax
..@j20518:
		mov	ax,1
		push	ax
		lea	ax,[bp-56]
		push	ax
		lea	ax,[bp-48]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j20525
		mov	bx,word [bp+6]
		push	word [bx+17]
		mov	bx,word [bp+6]
		push	word [bx+2]
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j20528
		jmp	..@j20529
..@j20528:
		mov	bx,word [bp+6]
		push	word [bx+17]
		mov	bx,word [bp+6]
		push	word [bx+2]
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
..@j20529:
		mov	si,word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [si+11],ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	si,word [bp+6]
		mov	si,word [si+2]
		mov	ax,word [si+22]
		or	ax,3
		mov	word [bx+22],ax
		mov	bx,word [bp+6]
		push	word [bx+2]
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+74]
		call	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	al,byte [bx+22]
		mov	ah,0
		and	ax,-3
		mov	byte [bx+22],al
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j20548
		push	word [U_$CLASSES_$$_GLOBALLOADED+2]
		push	word [U_$CLASSES_$$_GLOBALLOADED]
		call	ax
		mov	bx,ax
		jmp	..@j20549
..@j20548:
		mov	bx,word U_$CLASSES_$$_GLOBALLOADED+2
..@j20549:
		cmp	word [bx],0
		je	..@j20546
		jmp	..@j20547
..@j20546:
		mov	bx,word [bp+6]
		mov	bx,word [bx+17]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-64],ax
		mov	word [bp-6],0
		mov	ax,word [bp-64]
		cmp	ax,word [bp-6]
		jl	..@j20553
		dec	word [bp-6]
	ALIGN 2
..@j20554:
		inc	word [bp-6]
		mov	bx,word [bp+6]
		push	word [bx+17]
		push	word [bp-6]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-60],ax
		push	word [bp-60]
		mov	bx,word [bp-60]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		mov	ax,word [bp-64]
		cmp	ax,word [bp-6]
		jg	..@j20554
..@j20553:
..@j20547:
..@j20525:
		call	FPC_POPADDRSTACK
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j20565
		push	word [U_$CLASSES_$$_GLOBALLOADED+2]
		push	word [U_$CLASSES_$$_GLOBALLOADED]
		call	ax
		mov	bx,ax
		jmp	..@j20566
..@j20565:
		mov	bx,word U_$CLASSES_$$_GLOBALLOADED+2
..@j20566:
		cmp	word [bx],0
		je	..@j20563
		jmp	..@j20564
..@j20563:
		mov	bx,word [bp+6]
		push	word [bx+17]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
..@j20564:
		mov	bx,word [bp+6]
		mov	word [bx+17],0
		pop	ax
		test	ax,ax
		je	..@j20526
		call	FPC_RERAISE
..@j20526:
		call	CLASSES_$$_GLOBALFIXUPREFERENCES
..@j20440:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j20442
		mov	ax,1
		push	ax
		lea	ax,[bp-56]
		push	ax
		lea	ax,[bp-48]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j20571
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	CLASSES_$$_REMOVEFIXUPREFERENCES$TCOMPONENT$ANSISTRING
		cmp	word [bp+4],0
		je	..@j20576
		jmp	..@j20577
..@j20576:
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
..@j20577:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j20571:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j20580
		call	FPC_RAISE_NESTED
..@j20580:
		call	FPC_DONEEXCEPTION
		jmp	..@j20442
..@j20442:
..@j20432:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-50]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-14]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j20433
		call	FPC_RERAISE
..@j20433:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	CLASSES_$$_REMOVEFIXUPREFERENCES$TCOMPONENT$ANSISTRING
EXTERN	CLASSES_$$_GLOBALFIXUPREFERENCES
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TFPLIST
EXTERN	U_$CLASSES_$$_GLOBALLOADED
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	CLASSES_$$_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT
EXTERN	fpc_ansistr_concat_multi
EXTERN	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
EXTERN	_$CLASSES$_Ld72
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES_$$_FINDCLASS$ANSISTRING$$TPERSISTENTCLASS
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
