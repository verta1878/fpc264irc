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
	GLOBAL FGL$_$TFPSLIST_$__$$_MOVE$SMALLINT$SMALLINT
FGL$_$TFPSLIST_$__$$_MOVE$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,268
		cmp	word [bp+6],0
		jl	..@j627
		jmp	..@j629
..@j629:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+6]
		jle	..@j627
		jmp	..@j628
..@j627:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-268]
		push	ax
		mov	ax,255
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-268]
		push	ax
		push	word [bp+6]
		call	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
..@j628:
		cmp	word [bp+4],0
		jl	..@j642
		jmp	..@j644
..@j644:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jle	..@j642
		jmp	..@j643
..@j642:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-268]
		push	ax
		mov	ax,255
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-268]
		push	ax
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
..@j643:
		mov	ax,word [bp+6]
		cmp	ax,word [bp+4]
		je	..@j657
		jmp	..@j658
..@j657:
		jmp	..@j625
..@j658:
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mul	word [bx+8]
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-2],dx
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mul	word [bx+8]
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-4],dx
		mov	bx,word [bp+8]
		mov	ax,word [bx+6]
		mov	word [bp-14],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-14]
		mul	word [bx+8]
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-6],dx
		mov	ax,word [bp-2]
		push	ax
		mov	ax,word [bp-6]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+8]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+4]
		cmp	ax,word [bp+6]
		jg	..@j679
		jmp	..@j680
..@j679:
		mov	ax,word [bp+6]
		inc	ax
		mov	word [bp-14],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-14]
		mul	word [bx+8]
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-8],dx
		mov	ax,word [bp-2]
		mov	word [bp-10],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		sub	ax,dx
		mov	word [bp-12],ax
		jmp	..@j691
..@j680:
		mov	ax,word [bp-4]
		mov	word [bp-8],ax
		mov	ax,word [bp+4]
		inc	ax
		mov	word [bp-14],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-14]
		mul	word [bx+8]
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-10],dx
		mov	ax,word [bp+6]
		mov	dx,word [bp+4]
		sub	ax,dx
		mov	word [bp-12],ax
..@j691:
		mov	ax,word [bp-8]
		push	ax
		mov	ax,word [bp-10]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-12]
		mul	word [bx+8]
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-6]
		push	ax
		mov	ax,word [bp-4]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+8]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j625:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
EXTERN	fpc_ansistr_to_shortstr
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
