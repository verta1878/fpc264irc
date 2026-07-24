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
	GLOBAL CLASSES$_$TPARSER_$__$$_HANDLEMINUS
CLASSES$_$TPARSER_$__$$_HANDLEMINUS:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-16],0
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
		jne	..@j3393
		mov	bx,word [bp+4]
		inc	word [bx+8]
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_ISNUMBER$$BOOLEAN
		test	al,al
		jne	..@j3397
		jmp	..@j3398
..@j3397:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_HANDLENUMBER
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,word _$CLASSES$_Ld12
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+17]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j3411
..@j3398:
		mov	bx,word [bp+4]
		mov	byte [bx+15],45
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+15]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-16]
		call	fpc_ansistr_assign
..@j3411:
..@j3393:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3394
		call	FPC_RERAISE
..@j3394:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_concat
EXTERN	_$CLASSES$_Ld12
EXTERN	CLASSES$_$TPARSER_$__$$_HANDLENUMBER
EXTERN	CLASSES$_$TPARSER_$__$$_ISNUMBER$$BOOLEAN
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
