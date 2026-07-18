BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL SYSTEM_$$_WRITESTRUNICODEINTERN$TEXTREC$BOOLEAN
SYSTEM_$$_WRITESTRUNICODEINTERN$TEXTREC$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-2],0
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
		jne	..@j24029
		mov	bx,word [bp+6]
		cmp	word [bx+10],0
		je	..@j24031
		jmp	..@j24032
..@j24031:
		jmp	..@j24029
..@j24032:
		mov	bx,word [bp+6]
		lea	ax,[bx+32]
		mov	word [bp-4],ax
		cmp	byte [bp+4],0
		je	..@j24035
		jmp	..@j24036
..@j24035:
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_ENDOFLASTCOMPLETEUTF8CODEPOINT$TEXTREC$$SMALLINT
		mov	word [bp-6],ax
		jmp	..@j24041
..@j24036:
		mov	bx,word [bp+6]
		mov	ax,word [bx+10]
		mov	word [bp-6],ax
..@j24041:
		mov	bx,word [bp+6]
		mov	ax,word [bx+14]
		push	ax
		mov	ax,-535
		push	ax
		lea	ax,[bp-2]
		push	ax
		push	word [bp-6]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+40]
		call	ax
		mov	ax,word [bp-4]
		push	ax
		mov	bx,word [bp-4]
		push	word [bx]
		push	word [bp-2]
		call	fpc_unicodestr_concat
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		sub	word [bx+10],ax
		mov	bx,word [bp+6]
		cmp	word [bx+10],0
		jne	..@j24058
		jmp	..@j24059
..@j24058:
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		mov	si,word [bp-6]
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+14]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+10]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j24059:
..@j24029:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j24030
		call	FPC_RERAISE
..@j24030:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_unicodestr_concat
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	SYSTEM_$$_ENDOFLASTCOMPLETEUTF8CODEPOINT$TEXTREC$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
