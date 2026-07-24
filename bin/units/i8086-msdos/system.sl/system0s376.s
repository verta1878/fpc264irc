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
	GLOBAL fpc_ansistr_copy
fpc_ansistr_copy:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		dec	word [bp+6]
		cmp	word [bp+6],0
		jl	..@j9696
		jmp	..@j9697
..@j9696:
		mov	word [bp+6],0
..@j9697:
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j9703
		mov	bx,word [bx-2]
..@j9703:
		cmp	bx,word [bp+4]
		jl	..@j9700
		jmp	..@j9702
..@j9702:
		mov	dx,word [bp+6]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j9704
		mov	bx,word [bx-2]
..@j9704:
		cmp	ax,bx
		jg	..@j9700
		jmp	..@j9701
..@j9700:
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j9707
		mov	bx,word [bx-2]
..@j9707:
		mov	ax,word [bp+6]
		sub	bx,ax
		mov	word [bp+4],bx
..@j9701:
		cmp	word [bp+4],0
		jg	..@j9708
		jmp	..@j9709
..@j9708:
		push	word [bp+4]
		call	SYSTEM_$$_NEWANSISTRING$SMALLINT$$POINTER
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j9714
		jmp	..@j9715
..@j9714:
		mov	dx,word [bp+8]
		mov	ax,word [bp+6]
		add	ax,dx
		push	ax
		mov	ax,word [bp-2]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-2]
		mov	bx,word [bp+4]
		add	bx,ax
		mov	byte [bx],0
		mov	bx,word [bp-2]
		mov	ax,word [bp+4]
		mov	word [bx-2],ax
		mov	si,word [bp-2]
		mov	bx,word [bp+8]
		mov	ax,word [bx-8]
		mov	word [si-8],ax
..@j9715:
..@j9709:
		mov	ax,word [bp+10]
		push	ax
		call	FPC_ANSISTR_DECR_REF
		mov	bx,word [bp+10]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_ANSISTR_DECR_REF
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_NEWANSISTRING$SMALLINT$$POINTER
