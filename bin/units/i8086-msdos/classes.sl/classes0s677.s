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
	GLOBAL CLASSES$_$TINTERFACELIST_$__$$_INSERT$SMALLINT$IUNKNOWN
CLASSES$_$TINTERFACELIST_$__$$_INSERT$SMALLINT$IUNKNOWN:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+4]
		call	fpc_intf_incr_ref
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
		jne	..@j14364
		mov	bx,word [bp+8]
		push	word [bx+8]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
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
		jne	..@j14368
		mov	bx,word [bp+8]
		mov	bx,word [bx+8]
		push	word [bx+2]
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	CLASSES$_$TLIST_$__$$_INSERT$SMALLINT$POINTER
		mov	bx,word [bp+8]
		mov	bx,word [bx+8]
		push	word [bx+2]
		call	CLASSES$_$TLIST_$__$$_GETLIST$$PPOINTERLIST
		mov	bx,ax
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		push	word [bp+4]
		call	fpc_intf_assign
..@j14368:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+8]
		push	word [bx+8]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j14369
		call	FPC_RERAISE
..@j14369:
..@j14364:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	fpc_intf_decr_ref
		pop	ax
		test	ax,ax
		je	..@j14365
		call	FPC_RERAISE
..@j14365:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_intf_decr_ref
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_intf_assign
EXTERN	CLASSES$_$TLIST_$__$$_GETLIST$$PPOINTERLIST
EXTERN	CLASSES$_$TLIST_$__$$_INSERT$SMALLINT$POINTER
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_intf_incr_ref
