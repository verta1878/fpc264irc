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
	GLOBAL fpc_unicodestr_to_chararray
fpc_unicodestr_to_chararray:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-4],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j11603
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j11607
		mov	bx,word [bx-2]
..@j11607:
		mov	word [bp-2],bx
		cmp	word [bp-2],0
		jg	..@j11608
		jmp	..@j11609
..@j11608:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-4]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		push	word [bp-2]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+38]
		call	ax
..@j11609:
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j11620
		mov	bx,word [bx-2]
..@j11620:
		mov	word [bp-2],bx
		mov	ax,word [bp+6]
		inc	ax
		cmp	ax,word [bp-2]
		jl	..@j11621
		jmp	..@j11622
..@j11621:
		mov	ax,word [bp+6]
		inc	ax
		mov	word [bp-2],ax
..@j11622:
		mov	ax,word [bp-4]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp+6]
		inc	ax
		mov	dx,word [bp-2]
		sub	ax,dx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
..@j11603:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11604
		call	FPC_RERAISE
..@j11604:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
