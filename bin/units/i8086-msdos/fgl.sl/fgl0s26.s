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
	GLOBAL FGL$_$TFPSLIST_$__$$_INSERT$SMALLINT$$POINTER
FGL$_$TFPSLIST_$__$$_INSERT$SMALLINT$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,258
		cmp	word [bp+4],0
		jl	..@j555
		jmp	..@j557
..@j557:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jl	..@j555
		jmp	..@j556
..@j555:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-258]
		push	ax
		mov	ax,255
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-258]
		push	ax
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
..@j556:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [si+6]
		je	..@j570
		jmp	..@j571
..@j570:
		push	word [bp+6]
		call	FGL$_$TFPSLIST_$__$$_EXPAND$$TFPSLIST
..@j571:
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mul	word [bx+8]
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-2],dx
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jg	..@j578
		jmp	..@j579
..@j578:
		mov	ax,word [bp-2]
		push	ax
		mov	bx,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,word [bp-2]
		add	ax,dx
		push	ax
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bp+4]
		sub	dx,ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mul	dx
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-2]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+8]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLBYTE$formal$SMALLINT$BYTE
..@j579:
		mov	bx,word [bp+6]
		inc	word [bx+4]
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FILLBYTE$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FGL$_$TFPSLIST_$__$$_EXPAND$$TFPSLIST
EXTERN	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
EXTERN	fpc_ansistr_to_shortstr
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
