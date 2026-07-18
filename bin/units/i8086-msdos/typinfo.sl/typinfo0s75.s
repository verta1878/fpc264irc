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
	GLOBAL TYPINFO_$$_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING
TYPINFO_$$_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING:
		push	bp
		mov	bp,sp
		sub	sp,20
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
		jne	..@j2039
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	al,byte [bx]
		cmp	al,7
		jb	..@j2042
		sub	al,7
		je	..@j2043
		sub	al,2
		je	..@j2043
		dec	al
		je	..@j2044
		sub	al,14
		je	..@j2045
		jmp	..@j2042
..@j2043:
		push	word [bp+8]
		push	word [bp+6]
		lea	ax,[bp-20]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-20]
		call	TYPINFO_$$_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING
		jmp	..@j2041
..@j2044:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING
		jmp	..@j2041
..@j2045:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		test	ax,ax
		je	..@j2066
		sub	ax,1
		jb	..@j2065
		sub	ax,1
		jbe	..@j2067
		jmp	..@j2065
..@j2066:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bp+8]
		add	ax,dx
		push	ax
		push	word [bp+4]
		call	fpc_unicodestr_assign
		jmp	..@j2064
..@j2067:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		cmp	ax,1
		je	..@j2072
		jmp	..@j2073
..@j2072:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		jmp	..@j2076
..@j2073:
		mov	si,word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [si+4]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j2076:
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j2083
		jmp	..@j2084
..@j2083:
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		push	word [bp+4]
		mov	ax,word [bp-4]
		call	ax
		jmp	..@j2091
..@j2084:
		push	word [bp-2]
		push	word [bp+4]
		mov	ax,word [bp-4]
		call	ax
..@j2091:
		jmp	..@j2064
..@j2065:
..@j2064:
		jmp	..@j2041
..@j2042:
..@j2041:
..@j2039:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2040
		call	FPC_RERAISE
..@j2040:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_unicodestr_assign
EXTERN	TYPINFO_$$_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING
EXTERN	TYPINFO_$$_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING
EXTERN	fpc_unicodestr_to_ansistr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
