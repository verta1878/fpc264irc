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
	GLOBAL CLASSES$_$TINTERFACELIST_$__$$_GET$SMALLINT$$IUNKNOWN
CLASSES$_$TINTERFACELIST_$__$$_GET$SMALLINT$$IUNKNOWN:
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
		jne	..@j14133
		cmp	word [bp+4],0
		jl	..@j14136
		jmp	..@j14138
..@j14138:
		mov	bx,word [bp+8]
		mov	bx,word [bx+8]
		push	word [bx+2]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		cmp	ax,word [bp+4]
		jle	..@j14136
		jmp	..@j14137
..@j14136:
		mov	bx,word [bp+8]
		mov	bx,word [bx+8]
		mov	bx,word [bx+2]
		mov	ax,word [bx]
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+4]
		mov	bx,word [bp+8]
		mov	bx,word [bx+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
..@j14137:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+8]
		push	word [bx+2]
		call	CLASSES$_$TLIST_$__$$_GETLIST$$PPOINTERLIST
		mov	bx,ax
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	fpc_intf_assign
..@j14133:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+8]
		push	word [bx+8]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j14134
		call	FPC_RERAISE
..@j14134:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_intf_assign
EXTERN	CLASSES$_$TLIST_$__$$_GETLIST$$PPOINTERLIST
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
