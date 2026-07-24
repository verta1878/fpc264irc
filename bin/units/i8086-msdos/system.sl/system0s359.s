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
	GLOBAL fpc_ansistr_assign
fpc_ansistr_assign:
	GLOBAL FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		cmp	ax,word [bp+4]
		je	..@j8612
		jmp	..@j8613
..@j8612:
		jmp	..@j8610
..@j8613:
		cmp	word [bp+4],0
		jne	..@j8614
		jmp	..@j8615
..@j8614:
		mov	bx,word [bp+4]
		cmp	word [bx-4],0
		jg	..@j8616
		jmp	..@j8617
..@j8616:
		mov	bx,word [bp+4]
		lea	ax,[bx-4]
		push	ax
		call	SYSTEM_$$_INCLOCKED$SMALLINT
..@j8617:
..@j8615:
		mov	ax,word [bp+6]
		push	ax
		call	FPC_ANSISTR_DECR_REF
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx],ax
..@j8610:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_ANSISTR_DECR_REF
EXTERN	SYSTEM_$$_INCLOCKED$SMALLINT
