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
	GLOBAL VARUTILS_$$_VARIANTTOBYTE$TVARDATA$$BYTE
VARUTILS_$$_VARIANTTOBYTE$TVARDATA$$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j2148
		sub	ax,16384
		je	..@j2149
		jmp	..@j2147
..@j2148:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j2152
		sub	ax,2
		je	..@j2153
		dec	ax
		je	..@j2155
		dec	ax
		je	..@j2156
		dec	ax
		je	..@j2157
		dec	ax
		je	..@j2158
		dec	ax
		je	..@j2159
		dec	ax
		je	..@j2167
		sub	ax,3
		je	..@j2160
		dec	ax
		je	..@j2161
		sub	ax,4
		je	..@j2154
		dec	ax
		je	..@j2162
		dec	ax
		je	..@j2163
		dec	ax
		je	..@j2164
		dec	ax
		je	..@j2165
		dec	ax
		je	..@j2166
		sub	ax,235
		je	..@j2168
		sub	ax,2
		je	..@j2169
		jmp	..@j2151
..@j2152:
		mov	byte [bp-1],0
		jmp	..@j2150
..@j2153:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2154:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2155:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2156:
		mov	bx,word [bp+4]
		wait fld	dword [bx+8]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2157:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2158:
		mov	bx,word [bp+4]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx+8]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2159:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2160:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2161:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOBYTE$TVARDATA$$BYTE
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2162:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2163:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2164:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2165:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2166:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2167:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_WSTRTOBYTE$POINTER$$BYTE
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2168:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_LSTRTOBYTE$POINTER$$BYTE
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2169:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_USTRTOBYTE$POINTER$$BYTE
		mov	byte [bp-1],al
		jmp	..@j2150
..@j2151:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,17
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2150:
		jmp	..@j2146
..@j2149:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j2220
		jmp	..@j2221
..@j2220:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j2223
		sub	ax,2
		je	..@j2224
		dec	ax
		je	..@j2226
		dec	ax
		je	..@j2227
		dec	ax
		je	..@j2228
		dec	ax
		je	..@j2229
		dec	ax
		je	..@j2230
		dec	ax
		je	..@j2238
		sub	ax,3
		je	..@j2231
		dec	ax
		je	..@j2232
		sub	ax,4
		je	..@j2225
		dec	ax
		je	..@j2233
		dec	ax
		je	..@j2234
		dec	ax
		je	..@j2235
		dec	ax
		je	..@j2236
		dec	ax
		je	..@j2237
		sub	ax,235
		je	..@j2239
		sub	ax,2
		je	..@j2240
		jmp	..@j2223
..@j2224:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2225:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2226:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2227:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	dword [bx]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2228:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2229:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2230:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2231:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2232:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOBYTE$TVARDATA$$BYTE
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2233:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2234:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2235:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2236:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2237:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2238:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_WSTRTOBYTE$POINTER$$BYTE
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2239:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_LSTRTOBYTE$POINTER$$BYTE
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2240:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_USTRTOBYTE$POINTER$$BYTE
		mov	byte [bp-1],al
		jmp	..@j2222
..@j2223:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,17
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2222:
		jmp	..@j2289
..@j2221:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,17
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2289:
		jmp	..@j2146
..@j2147:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,17
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2146:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	VARUTILS_$$_USTRTOBYTE$POINTER$$BYTE
EXTERN	VARUTILS_$$_LSTRTOBYTE$POINTER$$BYTE
EXTERN	VARUTILS_$$_WSTRTOBYTE$POINTER$$BYTE
EXTERN	_$VARUTILS$_Ld1
