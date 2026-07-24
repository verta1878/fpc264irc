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
	GLOBAL TYPINFO_$$_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING
TYPINFO_$$_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING:
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
		jne	..@j1879
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	al,byte [bx]
		cmp	al,7
		jb	..@j1882
		sub	al,7
		je	..@j1883
		sub	al,2
		je	..@j1883
		dec	al
		je	..@j1885
		sub	al,14
		je	..@j1884
		jmp	..@j1882
..@j1883:
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
		jmp	..@j1881
..@j1884:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING
		jmp	..@j1881
..@j1885:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		test	ax,ax
		je	..@j1906
		sub	ax,1
		jb	..@j1905
		sub	ax,1
		jbe	..@j1907
		jmp	..@j1905
..@j1906:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bp+8]
		add	ax,dx
		push	ax
		push	word [bp+4]
		call	fpc_unicodestr_assign
		jmp	..@j1904
..@j1907:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		cmp	ax,1
		je	..@j1912
		jmp	..@j1913
..@j1912:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		jmp	..@j1916
..@j1913:
		mov	si,word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [si+4]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j1916:
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j1923
		jmp	..@j1924
..@j1923:
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		push	word [bp+4]
		mov	ax,word [bp-4]
		call	ax
		jmp	..@j1931
..@j1924:
		push	word [bp-2]
		push	word [bp+4]
		mov	ax,word [bp-4]
		call	ax
..@j1931:
		jmp	..@j1904
..@j1905:
..@j1904:
		jmp	..@j1881
..@j1882:
..@j1881:
..@j1879:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1880
		call	FPC_RERAISE
..@j1880:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_unicodestr_assign
EXTERN	TYPINFO_$$_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING
EXTERN	TYPINFO_$$_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING
EXTERN	fpc_unicodestr_to_ansistr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
