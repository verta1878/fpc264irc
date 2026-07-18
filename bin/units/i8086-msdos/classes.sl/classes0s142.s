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
	GLOBAL CLASSES$_$TPARSER_$__$$_HANDLEALPHANUM
CLASSES$_$TPARSER_$__$$_HANDLEALPHANUM:
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
		jne	..@j3101
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		push	word [bp+4]
		lea	ax,[bp-16]
		push	ax
		call	CLASSES$_$TPARSER_$__$$_GETALPHANUM$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		mov	byte [bx+15],1
..@j3101:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3102
		call	FPC_RERAISE
..@j3102:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES$_$TPARSER_$__$$_GETALPHANUM$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
