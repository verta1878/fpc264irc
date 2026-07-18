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
	GLOBAL CLASSES$_$TPARSER_$__$$_HANDLESTRING
CLASSES$_$TPARSER_$__$$_HANDLESTRING:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	word [bp-4],0
		mov	word [bp-26],0
		mov	word [bp-24],0
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j3307
		mov	bx,word [bp+4]
		lea	ax,[bx+19]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	byte [bp-1],1
		jmp	..@j3320
	ALIGN 2
..@j3319:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		cmp	al,35
		jb	..@j3323
		sub	al,35
		je	..@j3325
		sub	al,4
		je	..@j3324
		jmp	..@j3323
..@j3324:
		push	word [bp+4]
		lea	ax,[bp-4]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_HANDLEQUOTEDSTRING$$ANSISTRING
		mov	bx,word [bp+4]
		lea	ax,[bx+19]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+19]
		lea	ax,[bp-24]
		push	ax
		push	word [bp-4]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-24]
		call	fpc_unicodestr_concat
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+17]
		push	word [bp-4]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j3322
..@j3325:
		push	word [bp+4]
		lea	ax,[bp-1]
		push	ax
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-7]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_HANDLEDECIMALCHARACTER$BOOLEAN$WIDECHAR$CHAR
		mov	bx,word [bp+4]
		lea	ax,[bx+19]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+19]
		lea	ax,[bp-24]
		push	ax
		push	word [bp-6]
		call	fpc_uchar_to_unicodestr
		push	word [bp-24]
		call	fpc_unicodestr_concat
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+17]
		lea	ax,[bp-26]
		push	ax
		mov	al,byte [bp-7]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-26]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j3322
..@j3323:
		jmp	..@j3321
..@j3322:
..@j3320:
		jmp	..@j3319
..@j3321:
		cmp	byte [bp-1],0
		jne	..@j3380
		jmp	..@j3381
..@j3380:
		mov	bx,word [bp+4]
		mov	byte [bx+15],2
		jmp	..@j3384
..@j3381:
		mov	bx,word [bp+4]
		mov	byte [bx+15],5
..@j3384:
..@j3307:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3308
		call	FPC_RERAISE
..@j3308:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_uchar_to_unicodestr
EXTERN	CLASSES$_$TPARSER_$__$$_HANDLEDECIMALCHARACTER$BOOLEAN$WIDECHAR$CHAR
EXTERN	fpc_ansistr_concat
EXTERN	fpc_unicodestr_concat
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	CLASSES$_$TPARSER_$__$$_HANDLEQUOTEDSTRING$$ANSISTRING
EXTERN	fpc_ansistr_assign
EXTERN	fpc_unicodestr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
