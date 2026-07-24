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
	GLOBAL CLASSES$_$TINTERFACELIST_$__$$_EXCHANGE$SMALLINT$SMALLINT
CLASSES$_$TINTERFACELIST_$__$$_EXCHANGE$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	bx,word [bp+8]
		push	word [bx+8]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
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
		jne	..@j14293
		mov	bx,word [bp+8]
		mov	bx,word [bx+8]
		push	word [bx+2]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_EXCHANGE$SMALLINT$SMALLINT
..@j14293:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+8]
		push	word [bx+8]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j14294
		call	FPC_RERAISE
..@j14294:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLIST_$__$$_EXCHANGE$SMALLINT$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
