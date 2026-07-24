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
	GLOBAL TYPINFO_$$_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED
TYPINFO_$$_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,14
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		test	ax,ax
		jl	..@j2101
		test	ax,ax
		je	..@j2102
		dec	ax
		jl	..@j2101
		dec	ax
		jle	..@j2103
		jmp	..@j2101
..@j2102:
		mov	bx,word [bp+4]
		push	word [bx]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		mov	al,byte [bx]
		test	al,al
		je	..@j2106
		dec	al
		je	..@j2107
		dec	al
		je	..@j2108
		dec	al
		je	..@j2109
		dec	al
		je	..@j2110
		jmp	..@j2105
..@j2106:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp+6]
		add	bx,ax
		wait fld	dword [bx]
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j2104
..@j2107:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp+6]
		add	bx,ax
		wait fld	qword [bx]
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j2104
..@j2108:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	si,word [bp+6]
		add	si,ax
		lea	di,[bp-10]
		push	ss
		pop	es
		cld
		mov	cx,5
		rep
		movsw
		jmp	..@j2104
..@j2109:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp+6]
		add	bx,ax
		wait fild	qword [bx]
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j2104
..@j2110:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp+6]
		add	bx,ax
		wait fild	qword [_$TYPINFO$_Ld11]
		wait fild	qword [bx]
		wait fdivrp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j2104
..@j2105:
..@j2104:
		jmp	..@j2100
..@j2103:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		cmp	ax,1
		je	..@j2123
		jmp	..@j2124
..@j2123:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-14],ax
		jmp	..@j2127
..@j2124:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [si+2]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-14],ax
..@j2127:
		mov	ax,word [bp+6]
		mov	word [bp-12],ax
		mov	bx,word [bp+4]
		push	word [bx]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		mov	al,byte [bx]
		test	al,al
		je	..@j2136
		dec	al
		je	..@j2137
		dec	al
		je	..@j2138
		sub	al,2
		je	..@j2139
		jmp	..@j2135
..@j2136:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		je	..@j2142
		jmp	..@j2143
..@j2142:
		push	word [bp-12]
		mov	ax,word [bp-14]
		call	ax
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j2148
..@j2143:
		push	word [bp-12]
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	ax,word [bp-14]
		call	ax
		wait fstp	tword [bp-10]
		DB	09bh
..@j2148:
		jmp	..@j2134
..@j2137:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		je	..@j2155
		jmp	..@j2156
..@j2155:
		push	word [bp-12]
		mov	ax,word [bp-14]
		call	ax
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j2161
..@j2156:
		push	word [bp-12]
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	ax,word [bp-14]
		call	ax
		wait fstp	tword [bp-10]
		DB	09bh
..@j2161:
		jmp	..@j2134
..@j2138:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		je	..@j2168
		jmp	..@j2169
..@j2168:
		push	word [bp-12]
		mov	ax,word [bp-14]
		call	ax
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j2174
..@j2169:
		push	word [bp-12]
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	ax,word [bp-14]
		call	ax
		wait fstp	tword [bp-10]
		DB	09bh
..@j2174:
		jmp	..@j2134
..@j2139:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		je	..@j2181
		jmp	..@j2182
..@j2181:
		push	word [bp-12]
		mov	ax,word [bp-14]
		call	ax
		wait fild	qword [_$TYPINFO$_Ld11]
		wait fdivp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j2187
..@j2182:
		push	word [bp-12]
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	ax,word [bp-14]
		call	ax
		wait fild	qword [_$TYPINFO$_Ld11]
		wait fdivp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j2187:
		jmp	..@j2134
..@j2135:
..@j2134:
		jmp	..@j2100
..@j2101:
..@j2100:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	_$TYPINFO$_Ld11
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
