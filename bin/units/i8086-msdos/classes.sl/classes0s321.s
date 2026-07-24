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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_GETNAMEVALUE$SMALLINT$ANSISTRING$ANSISTRING
CLASSES$_$TSTRINGS_$__$$_GETNAMEVALUE$SMALLINT$ANSISTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	bx,word [bp+6]
		mov	word [bx],0
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bp-20],0
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
		jne	..@j7147
		push	word [bp+10]
		call	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
		mov	ax,word [bp+4]
		push	ax
		push	word [bp+10]
		lea	ax,[bp-20]
		push	ax
		push	word [bp+8]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp-20]
		call	fpc_ansistr_assign
		mov	bx,word [bp+10]
		mov	al,byte [bx+9]
		mov	ah,0
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j7167
		cmp	dx,0
		jne	..@j7167
		jmp	..@j7168
..@j7167:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-20]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,1
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,1
		sbb	dx,0
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-20]
		call	fpc_ansistr_assign
		mov	ax,word [bp+4]
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		jmp	..@j7187
..@j7168:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j7187:
..@j7147:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j7148
		call	FPC_RERAISE
..@j7148:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	fpc_ansistr_copy
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
