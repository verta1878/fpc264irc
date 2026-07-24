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
	GLOBAL SYSTEM_$$_INSERT$UNICODESTRING$UNICODESTRING$SMALLINT
SYSTEM_$$_INSERT$UNICODESTRING$UNICODESTRING$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-2],0
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
		jne	..@j12310
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j12314
		mov	bx,word [bx-2]
..@j12314:
		test	bx,bx
		je	..@j12312
		jmp	..@j12313
..@j12312:
		jmp	..@j12310
..@j12313:
		cmp	word [bp+4],0
		jle	..@j12315
		jmp	..@j12316
..@j12315:
		mov	word [bp+4],1
..@j12316:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j12321
		mov	bx,word [bx-2]
..@j12321:
		mov	word [bp-4],bx
		mov	ax,word [bp+4]
		cmp	ax,word [bp-4]
		jg	..@j12322
		jmp	..@j12323
..@j12322:
		mov	ax,word [bp-4]
		inc	ax
		mov	word [bp+4],ax
..@j12323:
		dec	word [bp+4]
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j12330
		mov	bx,word [bx-2]
..@j12330:
		mov	ax,word [bp-4]
		add	ax,bx
		push	ax
		call	fpc_unicodestr_setlength
		cmp	word [bp+4],0
		jg	..@j12331
		jmp	..@j12332
..@j12331:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		test	ax,ax
		jne	..@j12335
		mov	ax,word FPC_EMPTYCHAR
..@j12335:
		push	ax
		mov	ax,word [bp-2]
		test	ax,ax
		jne	..@j12338
		mov	ax,word FPC_EMPTYCHAR
..@j12338:
		push	ax
		mov	ax,word [bp+4]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j12332:
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j12343
		mov	ax,word FPC_EMPTYCHAR
..@j12343:
		push	ax
		mov	bx,word [bp-2]
		test	bx,bx
		jne	..@j12346
		mov	bx,word FPC_EMPTYCHAR
..@j12346:
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j12349
		mov	bx,word [bx-2]
..@j12349:
		shl	bx,1
		push	bx
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-4]
		mov	dx,word [bp+4]
		sub	ax,dx
		cmp	ax,0
		jg	..@j12350
		jmp	..@j12351
..@j12350:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		jne	..@j12354
		mov	bx,word FPC_EMPTYCHAR
..@j12354:
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp-2]
		test	bx,bx
		jne	..@j12357
		mov	bx,word FPC_EMPTYCHAR
..@j12357:
		mov	si,word [bp+8]
		test	si,si
		je	..@j12358
		mov	si,word [si-2]
..@j12358:
		mov	ax,word [bp+4]
		add	ax,si
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp+4]
		sub	ax,dx
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j12351:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		call	fpc_unicodestr_assign
..@j12310:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j12311
		call	FPC_RERAISE
..@j12311:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_unicodestr_assign
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_unicodestr_setlength
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
