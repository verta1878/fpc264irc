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
	GLOBAL CLASSES$_$TINTERFACELIST_$__$$_PUT$SMALLINT$IUNKNOWN
CLASSES$_$TINTERFACELIST_$__$$_PUT$SMALLINT$IUNKNOWN:
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
		jne	..@j14183
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
		jne	..@j14187
		cmp	word [bp+6],0
		jl	..@j14190
		jmp	..@j14192
..@j14192:
		mov	bx,word [bp+8]
		mov	bx,word [bx+8]
		push	word [bx+2]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		cmp	ax,word [bp+6]
		jle	..@j14190
		jmp	..@j14191
..@j14190:
		mov	bx,word [bp+8]
		mov	bx,word [bx+8]
		mov	bx,word [bx+2]
		mov	ax,word [bx]
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
..@j14191:
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
..@j14187:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+8]
		push	word [bx+8]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j14188
		call	FPC_RERAISE
..@j14188:
..@j14183:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	fpc_intf_decr_ref
		pop	ax
		test	ax,ax
		je	..@j14184
		call	FPC_RERAISE
..@j14184:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_intf_decr_ref
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_intf_assign
EXTERN	CLASSES$_$TLIST_$__$$_GETLIST$$PPOINTERLIST
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_intf_incr_ref
