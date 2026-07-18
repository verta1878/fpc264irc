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
	GLOBAL TYPINFO_$$_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED
TYPINFO_$$_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+14]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		test	ax,ax
		je	..@j2198
		sub	ax,1
		jb	..@j2197
		sub	ax,1
		jbe	..@j2199
		jmp	..@j2197
..@j2198:
		mov	bx,word [bp+14]
		push	word [bx]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		mov	al,byte [bx]
		test	al,al
		je	..@j2202
		dec	al
		je	..@j2203
		dec	al
		je	..@j2204
		dec	al
		je	..@j2205
		dec	al
		je	..@j2206
		jmp	..@j2201
..@j2202:
		mov	bx,word [bp+14]
		mov	ax,word [bx+4]
		mov	bx,word [bp+16]
		add	bx,ax
		wait fld	tword [bp+4]
		wait fstp	dword [bx]
		DB	09bh
		jmp	..@j2200
..@j2203:
		mov	bx,word [bp+14]
		mov	ax,word [bx+4]
		mov	bx,word [bp+16]
		add	bx,ax
		wait fld	tword [bp+4]
		wait fstp	qword [bx]
		DB	09bh
		jmp	..@j2200
..@j2204:
		mov	bx,word [bp+14]
		mov	ax,word [bx+4]
		mov	di,word [bp+16]
		add	di,ax
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,5
		rep
		movsw
		jmp	..@j2200
..@j2205:
		mov	bx,word [bp+14]
		mov	ax,word [bx+4]
		mov	bx,word [bp+16]
		add	bx,ax
		wait fld	tword [bp+4]
		wait fistp	qword [bx]
		DB	09bh
		jmp	..@j2200
..@j2206:
		mov	bx,word [bp+14]
		mov	ax,word [bx+4]
		mov	bx,word [bp+16]
		add	bx,ax
		wait fld	tword [bp+4]
		wait fld	tword [_$TYPINFO$_Ld12]
		wait fmulp	st1,st0
		wait fistp	qword [bx]
		DB	09bh
		jmp	..@j2200
..@j2201:
..@j2200:
		jmp	..@j2196
..@j2199:
		mov	bx,word [bp+14]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		cmp	ax,1
		je	..@j2219
		jmp	..@j2220
..@j2219:
		mov	bx,word [bp+14]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		jmp	..@j2223
..@j2220:
		mov	si,word [bp+14]
		mov	bx,word [bp+16]
		mov	bx,word [bx]
		mov	ax,word [si+4]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j2223:
		mov	ax,word [bp+16]
		mov	word [bp-2],ax
		mov	bx,word [bp+14]
		push	word [bx]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		mov	al,byte [bx]
		test	al,al
		je	..@j2232
		dec	al
		je	..@j2233
		dec	al
		je	..@j2234
		sub	al,2
		je	..@j2235
		jmp	..@j2231
..@j2232:
		mov	bx,word [bp+14]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		je	..@j2238
		jmp	..@j2239
..@j2238:
		push	word [bp-2]
		wait fld	tword [bp+4]
		wait fstp	dword [bp-8]
		DB	09bh
		wait fld	dword [bp-8]
		sub	sp,4
		mov	bx,sp
		wait fstp	dword [bx]
		DB	09bh
		mov	ax,word [bp-4]
		call	ax
		jmp	..@j2244
..@j2239:
		push	word [bp-2]
		mov	bx,word [bp+14]
		push	word [bx+8]
		wait fld	tword [bp+4]
		wait fstp	dword [bp-8]
		DB	09bh
		wait fld	dword [bp-8]
		sub	sp,4
		mov	bx,sp
		wait fstp	dword [bx]
		DB	09bh
		mov	ax,word [bp-4]
		call	ax
..@j2244:
		jmp	..@j2230
..@j2233:
		mov	bx,word [bp+14]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		je	..@j2251
		jmp	..@j2252
..@j2251:
		push	word [bp-2]
		wait fld	tword [bp+4]
		wait fstp	qword [bp-16]
		DB	09bh
		wait fld	qword [bp-16]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		mov	ax,word [bp-4]
		call	ax
		jmp	..@j2257
..@j2252:
		push	word [bp-2]
		mov	bx,word [bp+14]
		push	word [bx+8]
		wait fld	tword [bp+4]
		wait fstp	qword [bp-12]
		DB	09bh
		wait fld	qword [bp-12]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		mov	ax,word [bp-4]
		call	ax
..@j2257:
		jmp	..@j2230
..@j2234:
		mov	bx,word [bp+14]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		je	..@j2264
		jmp	..@j2265
..@j2264:
		push	word [bp-2]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [bp-4]
		call	ax
		jmp	..@j2270
..@j2265:
		push	word [bp-2]
		mov	bx,word [bp+14]
		push	word [bx+8]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [bp-4]
		call	ax
..@j2270:
		jmp	..@j2230
..@j2235:
		mov	bx,word [bp+14]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		je	..@j2277
		jmp	..@j2278
..@j2277:
		push	word [bp-2]
		wait fld	tword [bp+4]
		wait fld	tword [_$TYPINFO$_Ld12]
		wait fmulp	st1,st0
		sub	sp,8
		mov	bx,sp
		wait fistp	qword [bx]
		DB	09bh
		mov	ax,word [bp-4]
		call	ax
		jmp	..@j2283
..@j2278:
		push	word [bp-2]
		mov	bx,word [bp+14]
		push	word [bx+8]
		wait fld	tword [bp+4]
		wait fld	tword [_$TYPINFO$_Ld12]
		wait fmulp	st1,st0
		sub	sp,8
		mov	bx,sp
		wait fistp	qword [bx]
		DB	09bh
		mov	ax,word [bp-4]
		call	ax
..@j2283:
		jmp	..@j2230
..@j2231:
..@j2230:
		jmp	..@j2196
..@j2197:
..@j2196:
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	_$TYPINFO$_Ld12
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
