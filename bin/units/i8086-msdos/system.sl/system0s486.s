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
	GLOBAL SYSTEM_$$_DELETE$UNICODESTRING$SMALLINT$SMALLINT
SYSTEM_$$_DELETE$UNICODESTRING$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j12283
		mov	bx,word [bx-2]
..@j12283:
		mov	word [bp-2],bx
		mov	ax,word [bp+6]
		cmp	ax,word [bp-2]
		jg	..@j12284
		jmp	..@j12287
..@j12287:
		cmp	word [bp+6],0
		jle	..@j12284
		jmp	..@j12286
..@j12286:
		cmp	word [bp+4],0
		jle	..@j12284
		jmp	..@j12285
..@j12284:
		jmp	..@j12279
..@j12285:
		mov	ax,word [bp+8]
		push	ax
		call	FPC_UNICODESTR_UNIQUE
		mov	ax,word [bp-2]
		mov	dx,word [bp+6]
		sub	ax,dx
		cmp	ax,word [bp+4]
		jl	..@j12290
		jmp	..@j12291
..@j12290:
		mov	ax,word [bp-2]
		mov	dx,word [bp+6]
		sub	ax,dx
		inc	ax
		mov	word [bp+4],ax
..@j12291:
		mov	ax,word [bp-2]
		mov	dx,word [bp+6]
		sub	ax,dx
		cmp	ax,word [bp+4]
		jge	..@j12294
		jmp	..@j12295
..@j12294:
		dec	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		jne	..@j12298
		mov	bx,word FPC_EMPTYCHAR
..@j12298:
		mov	dx,word [bp+6]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		jne	..@j12301
		mov	bx,word FPC_EMPTYCHAR
..@j12301:
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp-2]
		mov	dx,word [bp+6]
		sub	ax,dx
		mov	dx,word [bp+4]
		sub	ax,dx
		inc	ax
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j12295:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-2]
		mov	dx,word [bp+4]
		sub	ax,dx
		push	ax
		call	fpc_unicodestr_setlength
..@j12279:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_unicodestr_setlength
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FPC_EMPTYCHAR
EXTERN	FPC_UNICODESTR_UNIQUE
