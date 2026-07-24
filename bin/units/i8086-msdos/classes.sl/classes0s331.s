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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_SETVALUE$ANSISTRING$ANSISTRING
CLASSES$_$TSTRINGS_$__$$_SETVALUE$ANSISTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	word [bp-28],0
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
		jne	..@j7636
		push	word [bp+8]
		call	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
		push	word [bp+8]
		push	word [bp+6]
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
		jne	..@j7647
		cmp	dx,-1
		jne	..@j7647
		jmp	..@j7646
..@j7646:
		push	word [bp+8]
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-20]
		push	ax
		mov	ax,word [bp+6]
		mov	word [bp-26],ax
		lea	ax,[bp-28]
		push	ax
		mov	bx,word [bp+8]
		mov	al,byte [bx+9]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		mov	ax,word [bp-28]
		mov	word [bp-24],ax
		mov	ax,word [bp+4]
		mov	word [bp-22],ax
		lea	ax,[bp-26]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		push	word [bp-20]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
		jmp	..@j7666
..@j7647:
		push	word [bp+8]
		push	word [bp-4]
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-20]
		push	ax
		mov	ax,word [bp+6]
		mov	word [bp-26],ax
		lea	ax,[bp-28]
		push	ax
		mov	bx,word [bp+8]
		mov	al,byte [bx+9]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		mov	ax,word [bp-28]
		mov	word [bp-24],ax
		mov	ax,word [bp+4]
		mov	word [bp-22],ax
		lea	ax,[bp-26]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		push	word [bp-20]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
..@j7666:
..@j7636:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-28]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j7637
		call	FPC_RERAISE
..@j7637:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat_multi
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_decr_ref
EXTERN	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
