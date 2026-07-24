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
	GLOBAL SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10427
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j10431
		mov	bx,word [bx-2]
..@j10431:
		test	bx,bx
		je	..@j10429
		jmp	..@j10430
..@j10429:
		jmp	..@j10427
..@j10430:
		cmp	word [bp+4],0
		jle	..@j10432
		jmp	..@j10433
..@j10432:
		mov	word [bp+4],1
..@j10433:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j10438
		mov	bx,word [bx-2]
..@j10438:
		mov	word [bp-4],bx
		mov	ax,word [bp+4]
		cmp	ax,word [bp-4]
		jg	..@j10439
		jmp	..@j10440
..@j10439:
		mov	ax,word [bp-4]
		inc	ax
		mov	word [bp+4],ax
..@j10440:
		dec	word [bp+4]
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j10447
		mov	bx,word [bx-2]
..@j10447:
		mov	ax,word [bp-4]
		add	ax,bx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j10452
		mov	bx,word [bx-2]
..@j10452:
		test	bx,bx
		jne	..@j10450
		jmp	..@j10451
..@j10450:
		mov	bx,word [bp+6]
		push	word [bx]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-22],ax
		mov	ax,word [bp-22]
		mov	dx,word [bp-22]
		sub	dx,1
		jbe	..@j10464
		jmp	..@j10463
..@j10464:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j10462
..@j10463:
..@j10462:
		mov	word [bp-6],ax
		jmp	..@j10467
..@j10451:
		push	word [bp+8]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-22],ax
		mov	ax,word [bp-22]
		mov	dx,word [bp-22]
		sub	dx,1
		jbe	..@j10479
		jmp	..@j10478
..@j10479:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j10477
..@j10478:
..@j10477:
		mov	word [bp-6],ax
..@j10467:
		lea	ax,[bp-2]
		push	ax
		push	word [bp-6]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		cmp	word [bp+4],0
		jg	..@j10488
		jmp	..@j10489
..@j10488:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		test	ax,ax
		jne	..@j10492
		mov	ax,word FPC_EMPTYCHAR
..@j10492:
		push	ax
		mov	ax,0
		push	ax
		lea	ax,[bp-2]
		push	ax
		mov	ax,0
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
..@j10489:
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j10503
		mov	ax,word FPC_EMPTYCHAR
..@j10503:
		push	ax
		mov	ax,0
		push	ax
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j10512
		mov	bx,word [bx-2]
..@j10512:
		push	bx
		call	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
		mov	ax,word [bp-4]
		mov	dx,word [bp+4]
		sub	ax,dx
		cmp	ax,0
		jg	..@j10513
		jmp	..@j10514
..@j10513:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		test	ax,ax
		jne	..@j10517
		mov	ax,word FPC_EMPTYCHAR
..@j10517:
		push	ax
		push	word [bp+4]
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j10524
		mov	bx,word [bx-2]
..@j10524:
		mov	ax,word [bp+4]
		add	ax,bx
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp+4]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
..@j10514:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		call	fpc_ansistr_assign
..@j10427:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10428
		call	FPC_RERAISE
..@j10428:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	FPC_EMPTYCHAR
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	fpc_ansistr_setlength
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
