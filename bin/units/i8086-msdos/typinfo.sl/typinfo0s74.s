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
	GLOBAL TYPINFO_$$_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING
TYPINFO_$$_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-22],0
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
		jne	..@j1962
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	al,byte [bx]
		cmp	al,7
		jb	..@j1969
		sub	al,7
		je	..@j1970
		sub	al,2
		je	..@j1970
		dec	al
		je	..@j1971
		sub	al,14
		je	..@j1972
		jmp	..@j1969
..@j1970:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-22]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING
		push	word [bp-22]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-20]
		call	fpc_unicodestr_assign
		jmp	..@j1968
..@j1971:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-20]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING
		push	word [bp-20]
		call	fpc_unicodestr_assign
		jmp	..@j1968
..@j1972:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		test	ax,ax
		jl	..@j1998
		test	ax,ax
		je	..@j1999
		dec	ax
		jl	..@j1998
		dec	ax
		jle	..@j2000
		jmp	..@j1998
..@j1999:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp+6]
		add	bx,ax
		push	word [bx]
		call	fpc_unicodestr_assign
		jmp	..@j1997
..@j2000:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		cmp	ax,1
		je	..@j2005
		jmp	..@j2006
..@j2005:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		jmp	..@j2009
..@j2006:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [si+2]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j2009:
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j2016
		jmp	..@j2017
..@j2016:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-2]
		lea	ax,[bp-20]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp-4]
		call	ax
		push	word [bp-20]
		call	fpc_unicodestr_assign
		jmp	..@j2028
..@j2017:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-2]
		lea	ax,[bp-20]
		push	ax
		mov	ax,word [bp-4]
		call	ax
		push	word [bp-20]
		call	fpc_unicodestr_assign
..@j2028:
		jmp	..@j1997
..@j1998:
..@j1997:
		jmp	..@j1968
..@j1969:
..@j1968:
..@j1962:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-20]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1963
		call	FPC_RERAISE
..@j1963:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	TYPINFO_$$_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	TYPINFO_$$_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING
EXTERN	fpc_unicodestr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
