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
	GLOBAL fpc_widechararray_to_shortstr
fpc_widechararray_to_shortstr:
	GLOBAL FPC_WIDECHARARRAY_TO_SHORTSTR
FPC_WIDECHARARRAY_TO_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-10],0
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j11494
		mov	ax,word [bp+6]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word [bp+10]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-2]
		jl	..@j11498
		jg	..@j11499
		cmp	cx,word [bp-4]
		jbe	..@j11498
		jmp	..@j11499
		jmp	..@j11499
..@j11498:
		mov	ax,word [bp+10]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j11502
..@j11499:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jl	..@j11503
		jg	..@j11504
		cmp	ax,0
		jb	..@j11503
		jmp	..@j11504
..@j11503:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j11504:
..@j11502:
		cmp	byte [bp+4],0
		jne	..@j11507
		jmp	..@j11508
..@j11507:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jl	..@j11517
		jmp	..@j11518
..@j11517:
		mov	al,byte [bp-4]
		mov	byte [bp-7],al
		jmp	..@j11521
..@j11518:
		mov	al,byte [bp-6]
		mov	byte [bp-7],al
..@j11521:
		jmp	..@j11524
..@j11508:
		mov	al,byte [bp-4]
		mov	byte [bp-7],al
..@j11524:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-10]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	al,byte [bp-7]
		mov	ah,0
		push	ax
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER]
		call	ax
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+10]
		push	word [bp-10]
		call	fpc_ansistr_to_shortstr
..@j11494:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11495
		call	FPC_RERAISE
..@j11495:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_to_shortstr
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
