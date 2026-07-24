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
	GLOBAL CLASSES$_$TINTERFACELIST_$__$$_CLEAR
CLASSES$_$TINTERFACELIST_$__$$_CLEAR:
		push	bp
		mov	bp,sp
		sub	sp,18
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
		jne	..@j14239
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+2]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-18],ax
		mov	word [bp-2],0
		mov	ax,word [bp-18]
		cmp	ax,word [bp-2]
		jl	..@j14247
		dec	word [bp-2]
	ALIGN 2
..@j14248:
		inc	word [bp-2]
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+2]
		call	CLASSES$_$TLIST_$__$$_GETLIST$$PPOINTERLIST
		mov	bx,ax
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_intf_assign
		mov	ax,word [bp-18]
		cmp	ax,word [bp-2]
		jg	..@j14248
..@j14247:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	CLASSES$_$TTHREADLIST_$__$$_CLEAR
..@j14239:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j14240
		call	FPC_RERAISE
..@j14240:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TTHREADLIST_$__$$_CLEAR
EXTERN	fpc_intf_assign
EXTERN	CLASSES$_$TLIST_$__$$_GETLIST$$PPOINTERLIST
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
