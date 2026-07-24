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
	GLOBAL FGL$_$TFPSLIST_$__$$_DELETE$SMALLINT
FGL$_$TFPSLIST_$__$$_DELETE$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,260
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		cmp	word [bp+4],0
		jl	..@j285
		jmp	..@j287
..@j287:
		mov	bx,word [bp-4]
		mov	ax,word [bp+4]
		cmp	ax,word [bx+4]
		jge	..@j285
		jmp	..@j286
..@j285:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-260]
		push	ax
		mov	ax,255
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-260]
		push	ax
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
..@j286:
		mov	bx,word [bp+6]
		dec	word [bx+4]
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	si,word [bp-4]
		mov	bx,word [bp-4]
		mov	ax,word [bx+8]
		mul	word [bp+4]
		mov	dx,word [si+2]
		add	ax,dx
		mov	word [bp-2],ax
		push	word [bp+6]
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	ax,word [bp+4]
		inc	ax
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		mov	si,word [bp-6]
		mov	bx,word [bp-6]
		mov	ax,word [bx+8]
		mul	word [bp-4]
		mov	dx,word [si+2]
		add	ax,dx
		push	ax
		mov	ax,word [bp-2]
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
		mov	bx,word [bp+6]
		cmp	word [bx+6],256
		jg	..@j324
		jmp	..@j323
..@j324:
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		mov	cl,2
		shr	ax,cl
		mov	bx,word [bp+6]
		cmp	ax,word [bx+4]
		jg	..@j322
		jmp	..@j323
..@j322:
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		shr	ax,1
		mov	bx,word [bp+6]
		mov	word [bx+6],ax
		mov	bx,word [bp+6]
		lea	ax,[bx+2]
		push	ax
		mov	bx,word [bp+6]
		mov	dx,word [bx+6]
		inc	dx
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mul	dx
		push	ax
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
..@j323:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		mov	si,word [bp-6]
		mov	bx,word [bp-6]
		mov	ax,word [bx+8]
		mul	word [bp-4]
		mov	dx,word [si+2]
		add	ax,dx
		push	ax
		mov	bx,word [bp+6]
		mov	dx,word [bx+6]
		inc	dx
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		sub	dx,ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mul	dx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
EXTERN	fpc_ansistr_to_shortstr
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
