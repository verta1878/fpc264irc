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
	GLOBAL SYSTEM_$$_RMDIR$SHORTSTRING
SYSTEM_$$_RMDIR$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-16],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j25493
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		je	..@j25495
		jmp	..@j25497
..@j25497:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25498
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25499
..@j25498:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25499:
		cmp	word [bx],0
		jne	..@j25495
		jmp	..@j25496
..@j25495:
		jmp	..@j25493
..@j25496:
		lea	ax,[bp-16]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_GETDIRSTRFROMSHORTSTRING$SHORTSTRING$$RAWBYTESTRING
		push	word [bp-16]
		call	SYSTEM_$$_DO_RMDIR$RAWBYTESTRING
..@j25493:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j25494
		call	FPC_RERAISE
..@j25494:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_DO_RMDIR$RAWBYTESTRING
EXTERN	SYSTEM_$$_GETDIRSTRFROMSHORTSTRING$SHORTSTRING$$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
