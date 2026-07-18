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
	GLOBAL CLASSES$_$TPARSER_$__$$_GETTOKENNAME$CHAR$$ANSISTRING
CLASSES$_$TPARSER_$__$$_GETTOKENNAME$CHAR$$ANSISTRING:
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
		jne	..@j2869
		cmp	byte [bp+4],5
		jbe	..@j2871
		jmp	..@j2872
..@j2871:
		mov	ax,word [bp+6]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		mov	bx,ax
		shl	bx,1
		push	word [TC_$CLASSES_$$_TOKNAMES+bx]
		call	fpc_ansistr_assign
		jmp	..@j2877
..@j2872:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-16]
		call	fpc_ansistr_assign
..@j2877:
..@j2869:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2870
		call	FPC_RERAISE
..@j2870:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_assign
EXTERN	TC_$CLASSES_$$_TOKNAMES
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
