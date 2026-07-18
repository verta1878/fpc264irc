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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_EXCHANGE$SMALLINT$SMALLINT
CLASSES$_$TSTRINGS_$__$$_EXCHANGE$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	word [bp-4],0
		mov	word [bp-34],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8449
		push	word [bp+8]
		call	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8453
		push	word [bp+8]
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		mov	word [bp-2],ax
		push	word [bp+8]
		lea	ax,[bp-4]
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+8]
		push	word [bp+4]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+72]
		call	ax
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+8]
		lea	ax,[bp-34]
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp-34]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		push	word [bp+8]
		push	word [bp+4]
		push	word [bp-2]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+72]
		call	ax
		push	word [bp+8]
		push	word [bp+4]
		push	word [bp-4]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
..@j8453:
		call	FPC_POPADDRSTACK
		push	word [bp+8]
		call	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
		pop	ax
		test	ax,ax
		je	..@j8454
		call	FPC_RERAISE
..@j8454:
..@j8449:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-34]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8450
		call	FPC_RERAISE
..@j8450:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
