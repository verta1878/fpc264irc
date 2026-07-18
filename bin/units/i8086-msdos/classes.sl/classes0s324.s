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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_GETVALUE$ANSISTRING$$ANSISTRING
CLASSES$_$TSTRINGS_$__$$_GETVALUE$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-6],0
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j7235
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		push	word [bp+8]
		push	word [bp+4]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+102]
		call	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,-1
		jne	..@j7247
		cmp	dx,-1
		jne	..@j7247
		jmp	..@j7248
..@j7247:
		push	word [bp+8]
		push	word [bp-4]
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		mov	ax,word [bp+6]
		mov	word [bp-22],ax
		push	word [bp-22]
		call	fpc_ansistr_decr_ref
		push	word [bp-22]
		call	CLASSES$_$TSTRINGS_$__$$_GETNAMEVALUE$SMALLINT$ANSISTRING$ANSISTRING
..@j7248:
..@j7235:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j7236
		call	FPC_RERAISE
..@j7236:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETNAMEVALUE$SMALLINT$ANSISTRING$ANSISTRING
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
