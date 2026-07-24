BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_DELETE$SMALLINT
CLASSES$_$TSTRINGLIST_$__$$_DELETE$SMALLINT:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jl	..@j9361
		jmp	..@j9363
..@j9363:
		mov	bx,word [bp+6]
		mov	ax,word [bx+22]
		cmp	ax,word [bp+4]
		jle	..@j9361
		jmp	..@j9362
..@j9361:
		push	word [bp+6]
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+4]
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
..@j9362:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+124]
		call	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		lea	ax,[bx+si]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		cmp	byte [bx+38],0
		jne	..@j9376
		jmp	..@j9377
..@j9376:
		mov	bx,word [bp+6]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		lea	ax,[bx+si+2]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
..@j9377:
		mov	bx,word [bp+6]
		dec	word [bx+22]
		mov	bx,word [bp+6]
		mov	ax,word [bx+22]
		cmp	ax,word [bp+4]
		jg	..@j9380
		jmp	..@j9381
..@j9380:
		mov	bx,word [bp+6]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		inc	ax
		mov	si,ax
		mov	cl,2
		shl	si,cl
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+22]
		mov	dx,word [bp+4]
		sub	ax,dx
		mov	cl,2
		shl	ax,cl
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j9381:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+122]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
