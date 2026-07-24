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
	GLOBAL CLASSES$_$TINTERFACELIST_$__$$_INDEXOF$IUNKNOWN$$SMALLINT
CLASSES$_$TINTERFACELIST_$__$$_INDEXOF$IUNKNOWN$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,30
		push	word [bp+4]
		call	fpc_intf_incr_ref
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
		jne	..@j14324
		mov	bx,word [bp+6]
		push	word [bx+8]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
		mov	ax,1
		push	ax
		lea	ax,[bp-28]
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j14328
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		push	word [bx+2]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		mov	word [bp-2],ax
..@j14328:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+6]
		push	word [bx+8]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j14329
		call	FPC_RERAISE
..@j14329:
..@j14324:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	fpc_intf_decr_ref
		pop	ax
		test	ax,ax
		je	..@j14325
		call	FPC_RERAISE
..@j14325:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_intf_decr_ref
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_intf_incr_ref
