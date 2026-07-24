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
	GLOBAL CLASSES$_$TINTERFACELIST_$__$$_GETCOUNT$$SMALLINT
CLASSES$_$TINTERFACELIST_$__$$_GETCOUNT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
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
		jne	..@j14172
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+2]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		mov	word [bp-2],ax
..@j14172:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j14173
		call	FPC_RERAISE
..@j14173:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
