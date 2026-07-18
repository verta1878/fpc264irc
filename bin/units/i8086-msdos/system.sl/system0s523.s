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
	GLOBAL SYSTEM_$$_UTF8DECODE$RAWBYTESTRING$$UNICODESTRING
SYSTEM_$$_UTF8DECODE$RAWBYTESTRING$$UNICODESTRING:
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
		jne	..@j13427
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		cmp	word [bp+4],0
		je	..@j13433
		jmp	..@j13434
..@j13433:
		jmp	..@j13427
..@j13434:
		lea	ax,[bp-4]
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j13439
		mov	bx,word [bx-2]
..@j13439:
		push	bx
		call	fpc_unicodestr_setlength
		mov	ax,word [bp-4]
		test	ax,ax
		jne	..@j13444
		mov	ax,word FPC_EMPTYCHAR
..@j13444:
		push	ax
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j13447
		mov	bx,word [bx-2]
..@j13447:
		inc	bx
		push	bx
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j13450
		mov	ax,word FPC_EMPTYCHAR
..@j13450:
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j13453
		mov	bx,word [bx-2]
..@j13453:
		push	bx
		call	SYSTEM_$$_UTF8TOUNICODE$PUNICODECHAR$WORD$PCHAR$WORD$$WORD
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jg	..@j13454
		jmp	..@j13455
..@j13454:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp-2]
		dec	ax
		push	ax
		call	fpc_unicodestr_setlength
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-4]
		call	fpc_unicodestr_assign
..@j13455:
..@j13427:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j13428
		call	FPC_RERAISE
..@j13428:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_UTF8TOUNICODE$PUNICODECHAR$WORD$PCHAR$WORD$$WORD
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_unicodestr_setlength
EXTERN	fpc_unicodestr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
