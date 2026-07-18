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
	GLOBAL CLASSES$_$TPARSER_$__$$_CREATE$TSTREAM$$TPARSER
CLASSES$_$TPARSER_$__$$_CREATE$TSTREAM$$TPARSER:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j3444
		jmp	..@j3445
..@j3444:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j3445:
		cmp	word [bp+8],0
		je	..@j3450
		jmp	..@j3451
..@j3450:
		jmp	..@j3442
..@j3451:
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j3454
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
		mov	ax,4097
		push	ax
		call	SYSTEM_$$_GETMEM$WORD$$POINTER
		mov	bx,word [bp+8]
		mov	word [bx+4],ax
		mov	bx,word [bp+8]
		mov	word [bx+6],0
		mov	bx,word [bp+8]
		mov	word [bx+8],0
		mov	bx,word [bp+8]
		mov	word [bx+10],1
		mov	bx,word [bp+8]
		mov	word [bx+13],1
		mov	bx,word [bp+8]
		mov	byte [bx+16],0
		mov	bx,word [bp+8]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+8]
		lea	ax,[bx+19]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		mov	bx,word [bp+8]
		mov	byte [bx+12],0
		mov	bx,word [bp+8]
		mov	byte [bx+15],0
		push	word [bp+8]
		call	CLASSES$_$TPARSER_$__$$_LOADBUFFER
		push	word [bp+8]
		call	CLASSES$_$TPARSER_$__$$_SKIPBOM
		push	word [bp+8]
		call	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
		cmp	word [bp+8],0
		jne	..@j3495
		jmp	..@j3494
..@j3495:
		cmp	word [bp+6],0
		jne	..@j3493
		jmp	..@j3494
..@j3493:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j3494:
..@j3454:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j3456
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j3498
		cmp	word [bp+6],0
		jne	..@j3499
		jmp	..@j3500
..@j3499:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j3500:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j3498:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j3505
		call	FPC_RAISE_NESTED
..@j3505:
		call	FPC_DONEEXCEPTION
		jmp	..@j3456
..@j3456:
..@j3442:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
EXTERN	CLASSES$_$TPARSER_$__$$_SKIPBOM
EXTERN	CLASSES$_$TPARSER_$__$$_LOADBUFFER
EXTERN	fpc_unicodestr_assign
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_GETMEM$WORD$$POINTER
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
