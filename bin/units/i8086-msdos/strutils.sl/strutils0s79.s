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
	GLOBAL STRUTILS_$$_POSEX$WIDECHAR$UNICODESTRING$WORD$$SMALLINT
STRUTILS_$$_POSEX$WIDECHAR$UNICODESTRING$WORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2174
		mov	bx,word [bx-2]
..@j2174:
		mov	word [bp-4],bx
		cmp	word [bp+4],1
		jb	..@j2175
		jmp	..@j2177
..@j2177:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2178
		mov	bx,word [bx-2]
..@j2178:
		cmp	bx,word [bp+4]
		jb	..@j2175
		jmp	..@j2176
..@j2175:
		mov	word [bp-2],0
		jmp	..@j2170
..@j2176:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2183
		mov	bx,word [bx-2]
..@j2183:
		mov	word [bp-4],bx
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si-2]
		push	ax
		mov	ax,word [bp-4]
		cwd
		mov	bx,word [bp+4]
		mov	cx,0
		sub	ax,bx
		sbb	dx,cx
		add	ax,1
		adc	dx,0
		push	ax
		push	word [bp+8]
		call	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jl	..@j2192
		jmp	..@j2193
..@j2192:
		mov	word [bp-2],0
		jmp	..@j2196
..@j2193:
		mov	dx,word [bp-6]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [bp-2],ax
..@j2196:
..@j2170:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
