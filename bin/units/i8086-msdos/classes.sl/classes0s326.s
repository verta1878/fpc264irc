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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_SETVALUEFROMINDEX$SMALLINT$ANSISTRING
CLASSES$_$TSTRINGS_$__$$_SETVALUEFROMINDEX$SMALLINT$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	word [bp-26],0
		mov	word [bp-24],0
		mov	word [bp-16],0
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
		jne	..@j7279
		cmp	word [bp+4],0
		je	..@j7281
		jmp	..@j7282
..@j7281:
		push	word [bp+8]
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+94]
		call	ax
		jmp	..@j7287
..@j7282:
		cmp	word [bp+6],0
		jl	..@j7288
		jmp	..@j7289
..@j7288:
		push	word [bp+8]
		mov	ax,0
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
		mov	word [bp+6],ax
..@j7289:
		push	word [bp+8]
		call	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
		push	word [bp+8]
		push	word [bp+6]
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		push	word [bp+8]
		lea	ax,[bp-24]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETNAME$SMALLINT$$ANSISTRING
		mov	ax,word [bp-24]
		mov	word [bp-22],ax
		lea	ax,[bp-26]
		push	ax
		mov	bx,word [bp+8]
		mov	al,byte [bx+9]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		mov	ax,word [bp-26]
		mov	word [bp-20],ax
		mov	ax,word [bp+4]
		mov	word [bp-18],ax
		lea	ax,[bp-22]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		push	word [bp-16]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
..@j7287:
..@j7279:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j7280
		call	FPC_RERAISE
..@j7280:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat_multi
EXTERN	fpc_char_to_ansistr
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETNAME$SMALLINT$$ANSISTRING
EXTERN	fpc_ansistr_decr_ref
EXTERN	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
