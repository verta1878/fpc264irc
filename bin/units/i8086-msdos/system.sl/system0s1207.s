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
	GLOBAL SYSTEM_$$_GETDIR$BYTE$OPENSTRING
SYSTEM_$$_GETDIR$BYTE$OPENSTRING:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j25523
		mov	al,byte [bp+8]
		mov	ah,0
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	SYSTEM_$$_DO_GETDIR$BYTE$RAWBYTESTRING
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j25531
		mov	bx,word [bx-2]
..@j25531:
		cmp	bx,word [bp+4]
		jle	..@j25529
		jmp	..@j25530
..@j25529:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		push	word [bp-2]
		call	fpc_ansistr_to_shortstr
		jmp	..@j25538
..@j25530:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25541
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25542
..@j25541:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25542:
		mov	word [bx],3
..@j25538:
..@j25523:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j25524
		call	FPC_RERAISE
..@j25524:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	fpc_ansistr_to_shortstr
EXTERN	SYSTEM_$$_DO_GETDIR$BYTE$RAWBYTESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
