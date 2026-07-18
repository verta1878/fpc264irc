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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_GETVALUEFROMINDEX$SMALLINT$$ANSISTRING
CLASSES$_$TSTRINGS_$__$$_GETVALUEFROMINDEX$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-2],0
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
		jne	..@j7263
		push	word [bp+8]
		push	word [bp+4]
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		mov	ax,word [bp+6]
		mov	word [bp-18],ax
		push	word [bp-18]
		call	fpc_ansistr_decr_ref
		push	word [bp-18]
		call	CLASSES$_$TSTRINGS_$__$$_GETNAMEVALUE$SMALLINT$ANSISTRING$ANSISTRING
..@j7263:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j7264
		call	FPC_RERAISE
..@j7264:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETNAMEVALUE$SMALLINT$ANSISTRING$ANSISTRING
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
