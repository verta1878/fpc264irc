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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_GETDELIMITEDTEXT$$ANSISTRING
CLASSES$_$TSTRINGS_$__$$_GETDELIMITEDTEXT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,890
		mov	word [bp-38],0
		mov	word [bp-120],0
		mov	word [bp-118],0
		mov	ax,1
		push	ax
		lea	ax,[bp-50]
		push	ax
		lea	ax,[bp-44]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j6984
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		cmp	byte [bx+17],0
		jne	..@j6992
		jmp	..@j6993
..@j6992:
		mov	ax,word _$CLASSES$_Ld18
		push	ax
		lea	ax,[bp-116]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETQUOTECHAR$$CHAR
		mov	ah,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_set
		lea	ax,[bp-116]
		push	ax
		lea	ax,[bp-84]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETDELIMITER$$CHAR
		mov	ah,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_set
		lea	di,[bp-36]
		push	ss
		pop	es
		lea	si,[bp-84]
		cld
		mov	cx,16
		rep
		movsw
		jmp	..@j7016
..@j6993:
		mov	ax,word _$CLASSES$_Ld19
		push	ax
		lea	ax,[bp-116]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETQUOTECHAR$$CHAR
		mov	ah,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_set
		lea	ax,[bp-116]
		push	ax
		lea	ax,[bp-84]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETDELIMITER$$CHAR
		mov	ah,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_set
		lea	di,[bp-36]
		push	ss
		pop	es
		lea	si,[bp-84]
		cld
		mov	cx,16
		rep
		movsw
..@j7016:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		dec	ax
		mov	word [bp-890],ax
		mov	word [bp-2],0
		mov	ax,word [bp-890]
		cmp	ax,word [bp-2]
		jl	..@j7044
		dec	word [bp-2]
	ALIGN 2
..@j7045:
		inc	word [bp-2]
		push	word [bp+6]
		lea	ax,[bp-38]
		push	ax
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	ax,word [bp-38]
		test	ax,ax
		jne	..@j7054
		mov	ax,word FPC_EMPTYCHAR
..@j7054:
		mov	word [bp-4],ax
		jmp	..@j7056
	ALIGN 2
..@j7055:
		inc	word [bp-4]
..@j7056:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-36],ax
		jne	..@j7057
		jmp	..@j7055
..@j7057:
		mov	ax,word [bp-38]
		test	ax,ax
		jne	..@j7060
		mov	ax,word FPC_EMPTYCHAR
..@j7060:
		mov	bx,word [bp-38]
		test	bx,bx
		je	..@j7061
		mov	bx,word [bx-2]
..@j7061:
		add	bx,ax
		cmp	bx,word [bp-4]
		jne	..@j7058
		jmp	..@j7059
..@j7058:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		lea	ax,[bp-118]
		push	ax
		push	word [bp-38]
		lea	ax,[bp-120]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETQUOTECHAR$$CHAR
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-120]
		call	CLASSES_$$_QUOTESTRING$ANSISTRING$ANSISTRING$$ANSISTRING
		push	word [bp-118]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j7084
..@j7059:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		push	word [bp-38]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j7084:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		dec	ax
		cmp	ax,word [bp-2]
		jg	..@j7093
		jmp	..@j7094
..@j7093:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		lea	ax,[bp-120]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETDELIMITER$$CHAR
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-120]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j7094:
		mov	ax,word [bp-890]
		cmp	ax,word [bp-2]
		jg	..@j7045
..@j7044:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j7116
		mov	bx,word [bx-2]
..@j7116:
		test	bx,bx
		je	..@j7115
		jmp	..@j7114
..@j7115:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		cmp	ax,1
		je	..@j7113
		jmp	..@j7114
..@j7113:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-120]
		push	ax
		lea	ax,[bp-376]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETQUOTECHAR$$CHAR
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-632],ax
		lea	ax,[bp-632]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETQUOTECHAR$$CHAR
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-888],ax
		lea	ax,[bp-888]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-376]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-120]
		call	fpc_ansistr_assign
..@j7114:
..@j6984:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-120]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-118]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-38]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j6985
		call	FPC_RERAISE
..@j6985:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_shortstr_concat
EXTERN	fpc_ansistr_concat
EXTERN	CLASSES_$$_QUOTESTRING$ANSISTRING$ANSISTRING$$ANSISTRING
EXTERN	fpc_char_to_ansistr
EXTERN	FPC_EMPTYCHAR
EXTERN	_$CLASSES$_Ld19
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETDELIMITER$$CHAR
EXTERN	fpc_varset_set
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETQUOTECHAR$$CHAR
EXTERN	_$CLASSES$_Ld18
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
