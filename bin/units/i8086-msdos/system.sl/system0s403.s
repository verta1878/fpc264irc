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
	GLOBAL SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j10395
		mov	bx,word [bx-2]
..@j10395:
		mov	word [bp-2],bx
		mov	ax,word [bp+6]
		cmp	ax,word [bp-2]
		jg	..@j10396
		jmp	..@j10399
..@j10399:
		cmp	word [bp+6],0
		jle	..@j10396
		jmp	..@j10398
..@j10398:
		cmp	word [bp+4],0
		jle	..@j10396
		jmp	..@j10397
..@j10396:
		jmp	..@j10391
..@j10397:
		mov	ax,word [bp+8]
		push	ax
		call	FPC_ANSISTR_UNIQUE
		mov	ax,word [bp-2]
		mov	dx,word [bp+6]
		sub	ax,dx
		cmp	ax,word [bp+4]
		jl	..@j10402
		jmp	..@j10403
..@j10402:
		mov	ax,word [bp-2]
		mov	dx,word [bp+6]
		sub	ax,dx
		inc	ax
		mov	word [bp+4],ax
..@j10403:
		mov	ax,word [bp-2]
		mov	dx,word [bp+6]
		sub	ax,dx
		cmp	ax,word [bp+4]
		jge	..@j10406
		jmp	..@j10407
..@j10406:
		dec	word [bp+6]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		test	ax,ax
		jne	..@j10410
		mov	ax,word FPC_EMPTYCHAR
..@j10410:
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word [bp+4]
		add	ax,dx
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	ax,word [bp-2]
		mov	dx,word [bp+6]
		sub	ax,dx
		mov	dx,word [bp+4]
		sub	ax,dx
		inc	ax
		push	ax
		call	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
..@j10407:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-2]
		mov	dx,word [bp+4]
		sub	ax,dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
..@j10391:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_setlength
EXTERN	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	FPC_EMPTYCHAR
EXTERN	FPC_ANSISTR_UNIQUE
