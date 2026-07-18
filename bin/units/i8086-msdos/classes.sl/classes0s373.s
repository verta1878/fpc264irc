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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_MOVE$SMALLINT$SMALLINT
CLASSES$_$TSTRINGS_$__$$_MOVE$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	word [bp-4],0
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
		jne	..@j8743
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
		jne	..@j8747
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
		mov	ax,0
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+72]
		call	ax
		push	word [bp+8]
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+94]
		call	ax
		push	word [bp+8]
		push	word [bp+4]
		push	word [bp-4]
		push	word [bp-2]
		call	CLASSES$_$TSTRINGS_$__$$_INSERTOBJECT$SMALLINT$ANSISTRING$TOBJECT
..@j8747:
		call	FPC_POPADDRSTACK
		push	word [bp+8]
		call	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
		pop	ax
		test	ax,ax
		je	..@j8748
		call	FPC_RERAISE
..@j8748:
..@j8743:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8744
		call	FPC_RERAISE
..@j8744:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTRINGS_$__$$_INSERTOBJECT$SMALLINT$ANSISTRING$TOBJECT
EXTERN	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
