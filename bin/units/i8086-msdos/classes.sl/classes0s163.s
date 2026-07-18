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
	GLOBAL CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING
CLASSES$_$TPARSER_$__$$_TOKENSTRING$$ANSISTRING:
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
		jne	..@j3794
		mov	bx,word [bp+6]
		mov	al,byte [bx+15]
		cmp	al,4
		jb	..@j3797
		sub	al,4
		je	..@j3799
		dec	al
		je	..@j3798
		jmp	..@j3797
..@j3798:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+19]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		jmp	..@j3796
..@j3799:
		mov	bx,word [bp+6]
		cmp	byte [bx+12],0
		jne	..@j3806
		jmp	..@j3807
..@j3806:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+17]
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+12]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-16]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j3822
..@j3807:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+17]
		call	fpc_ansistr_assign
..@j3822:
		jmp	..@j3796
..@j3797:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+17]
		call	fpc_ansistr_assign
..@j3796:
..@j3794:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3795
		call	FPC_RERAISE
..@j3795:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_concat
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_unicodestr_to_ansistr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
