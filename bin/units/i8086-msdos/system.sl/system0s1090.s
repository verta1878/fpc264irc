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
	GLOBAL fpc_write_text_widechar
fpc_write_text_widechar:
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
		jne	..@j22729
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22733
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22734
..@j22733:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22734:
		cmp	word [bx],0
		jne	..@j22731
		jmp	..@j22732
..@j22731:
		jmp	..@j22729
..@j22732:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j22735
		cmp	dx,-10318
		jne	..@j22735
		jmp	..@j22736
..@j22735:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j22738
		cmp	dx,-10320
		jne	..@j22738
		jmp	..@j22737
..@j22737:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22741
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22742
..@j22741:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22742:
		mov	word [bx],103
		jmp	..@j22743
..@j22738:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22746
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22747
..@j22746:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22747:
		mov	word [bx],105
..@j22743:
		jmp	..@j22729
..@j22736:
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,0
		jg	..@j22748
		jl	..@j22749
		cmp	dx,1
		ja	..@j22748
		jmp	..@j22749
..@j22748:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		sub	ax,1
		sbb	dx,0
		push	dx
		push	ax
		call	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
..@j22749:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+6]
		jge	..@j22754
		jmp	..@j22755
..@j22754:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+18]
		call	ax
..@j22755:
		lea	ax,[bp+4]
		push	ax
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+828]
		mov	ax,1
		push	ax
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER]
		call	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp-2]
		test	ax,ax
		jne	..@j22770
		mov	ax,word FPC_EMPTYCHAR
..@j22770:
		push	ax
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j22773
		mov	bx,word [bx-2]
..@j22773:
		push	bx
		call	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
..@j22729:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j22730
		call	FPC_RERAISE
..@j22730:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
EXTERN	FPC_EMPTYCHAR
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
