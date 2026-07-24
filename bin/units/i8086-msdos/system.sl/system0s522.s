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
	GLOBAL SYSTEM_$$_UTF8ENCODE$UNICODESTRING$$RAWBYTESTRING
SYSTEM_$$_UTF8ENCODE$UNICODESTRING$$RAWBYTESTRING:
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
		jne	..@j13380
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		cmp	word [bp+4],0
		je	..@j13386
		jmp	..@j13387
..@j13386:
		jmp	..@j13380
..@j13387:
		lea	ax,[bp-4]
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j13392
		mov	bx,word [bx-2]
..@j13392:
		mov	ax,3
		mul	bx
		push	ax
		mov	ax,-535
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp-4]
		test	ax,ax
		jne	..@j13399
		mov	ax,word FPC_EMPTYCHAR
..@j13399:
		push	ax
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j13402
		mov	bx,word [bx-2]
..@j13402:
		inc	bx
		push	bx
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j13405
		mov	ax,word FPC_EMPTYCHAR
..@j13405:
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j13408
		mov	bx,word [bx-2]
..@j13408:
		push	bx
		call	SYSTEM_$$_UNICODETOUTF8$PCHAR$WORD$PUNICODECHAR$WORD$$WORD
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jg	..@j13409
		jmp	..@j13410
..@j13409:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp-2]
		dec	ax
		push	ax
		mov	ax,-535
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-4]
		call	fpc_ansistr_assign
..@j13410:
..@j13380:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j13381
		call	FPC_RERAISE
..@j13381:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_UNICODETOUTF8$PCHAR$WORD$PUNICODECHAR$WORD$$WORD
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
