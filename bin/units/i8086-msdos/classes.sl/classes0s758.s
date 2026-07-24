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
	GLOBAL CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITESTRING$ANSISTRING
CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITESTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,16
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j17251
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j17255
		mov	bx,word [bx-2]
..@j17255:
		cmp	bx,255
		jg	..@j17253
		jmp	..@j17254
..@j17253:
		mov	byte [bp-1],255
		jmp	..@j17258
..@j17254:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j17261
		mov	bx,word [bx-2]
..@j17261:
		mov	al,bl
		mov	byte [bp-1],al
..@j17258:
		mov	bx,word [bp+6]
		push	word [bx+4]
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j17268
		mov	bx,word [bx-2]
..@j17268:
		cmp	bx,0
		jg	..@j17266
		jmp	..@j17267
..@j17266:
		mov	bx,word [bp+6]
		push	word [bx+4]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		mov	dl,byte [bp-1]
		mov	dh,0
		push	ax
		push	dx
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
..@j17267:
..@j17251:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j17252
		call	FPC_RERAISE
..@j17252:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
