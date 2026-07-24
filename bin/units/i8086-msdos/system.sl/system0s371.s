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
	GLOBAL fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
	GLOBAL FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-12],0
		mov	word [bp-14],0
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
		jne	..@j9453
		mov	ax,word [bp+6]
		cmp	ax,word [bp+4]
		je	..@j9455
		jmp	..@j9456
..@j9455:
		mov	word [bp-2],0
		jmp	..@j9453
..@j9456:
		cmp	word [bp+6],0
		je	..@j9459
		jmp	..@j9460
..@j9459:
		mov	word [bp-2],-1
		jmp	..@j9453
..@j9460:
		cmp	word [bp+4],0
		je	..@j9463
		jmp	..@j9464
..@j9463:
		mov	word [bp-2],1
		jmp	..@j9453
..@j9464:
		push	word [bp+6]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-30],ax
		mov	dx,word [bp-30]
		mov	ax,word [bp-30]
		sub	ax,1
		jbe	..@j9478
		jmp	..@j9477
..@j9478:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j9476
..@j9477:
..@j9476:
		mov	word [bp-8],dx
		push	word [bp+4]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-30],ax
		mov	dx,word [bp-30]
		mov	ax,word [bp-30]
		sub	ax,1
		jbe	..@j9492
		jmp	..@j9491
..@j9492:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j9490
..@j9491:
..@j9490:
		mov	word [bp-10],dx
		mov	ax,word [bp-8]
		cmp	ax,word [bp-10]
		je	..@j9495
		jmp	..@j9496
..@j9495:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9499
		mov	bx,word [bx-2]
..@j9499:
		mov	word [bp-4],bx
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j9502
		mov	bx,word [bx-2]
..@j9502:
		mov	word [bp-6],bx
		mov	ax,word [bp-4]
		mov	dx,word [bp-6]
		sub	ax,dx
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j9505
		jmp	..@j9506
..@j9505:
		cmp	word [bp-4],0
		jg	..@j9507
		jmp	..@j9508
..@j9507:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
		mov	word [bp-2],ax
..@j9508:
..@j9506:
		jmp	..@j9517
..@j9496:
		lea	ax,[bp-12]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		lea	ax,[bp-14]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		lea	ax,[bp-12]
		push	ax
		mov	ax,-535
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		lea	ax,[bp-14]
		push	ax
		mov	ax,-535
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j9540
		mov	bx,word [bx-2]
..@j9540:
		mov	word [bp-4],bx
		mov	bx,word [bp-14]
		test	bx,bx
		je	..@j9543
		mov	bx,word [bx-2]
..@j9543:
		mov	word [bp-6],bx
		mov	ax,word [bp-4]
		mov	dx,word [bp-6]
		sub	ax,dx
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j9546
		jmp	..@j9547
..@j9546:
		cmp	word [bp-4],0
		jg	..@j9548
		jmp	..@j9549
..@j9548:
		mov	ax,word [bp-12]
		push	ax
		mov	ax,word [bp-14]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
		mov	word [bp-2],ax
..@j9549:
..@j9547:
..@j9517:
..@j9453:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-14]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j9454
		call	FPC_RERAISE
..@j9454:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
