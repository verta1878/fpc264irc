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
	GLOBAL STRUTILS_$$_POSEX$UNICODESTRING$UNICODESTRING$WORD$$SMALLINT
STRUTILS_$$_POSEX$UNICODESTRING$UNICODESTRING$WORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-2],0
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j2123
		mov	bx,word [bx-2]
..@j2123:
		mov	word [bp-8],bx
		cmp	word [bp-8],0
		jg	..@j2127
		jmp	..@j2125
..@j2127:
		cmp	word [bp+4],0
		ja	..@j2126
		jmp	..@j2125
..@j2126:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2128
		mov	bx,word [bx-2]
..@j2128:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp+4]
		mov	bx,0
		cmp	ax,bx
		ja	..@j2124
		jb	..@j2125
		cmp	cx,dx
		jae	..@j2124
		jmp	..@j2125
..@j2124:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2131
		mov	bx,word [bx-2]
..@j2131:
		mov	ax,word [bp-8]
		sub	bx,ax
		mov	word [bp-6],bx
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-10],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si-2]
		push	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2140
		mov	bx,word [bx-2]
..@j2140:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp+4]
		mov	bx,0
		sub	cx,dx
		sbb	ax,bx
		add	cx,1
		adc	ax,0
		push	cx
		push	word [bp-10]
		call	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
		mov	word [bp-4],ax
		jmp	..@j2144
	ALIGN 2
..@j2143:
		mov	bx,word [bp+6]
		mov	dx,word [bp-4]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si-2]
		mov	word [bp-12],ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-12]
		push	ax
		push	word [bp-8]
		call	SYSTEM_$$_COMPAREWORD$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j2148
		jmp	..@j2149
..@j2148:
		mov	dx,word [bp-4]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [bp-2],ax
		jmp	..@j2117
..@j2149:
		mov	dx,word [bp-4]
		mov	ax,word [bp+4]
		add	ax,dx
		inc	ax
		mov	word [bp+4],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si-2]
		push	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2166
		mov	bx,word [bx-2]
..@j2166:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	bx,word [bp+4]
		mov	dx,0
		sub	cx,bx
		sbb	ax,dx
		add	cx,1
		adc	ax,0
		push	cx
		push	word [bp-10]
		call	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
		mov	word [bp-4],ax
..@j2144:
		cmp	word [bp-4],0
		jge	..@j2169
		jmp	..@j2145
..@j2169:
		mov	dx,word [bp-4]
		mov	ax,word [bp+4]
		add	ax,dx
		dec	ax
		cmp	ax,word [bp-6]
		jle	..@j2143
		jmp	..@j2145
..@j2145:
..@j2125:
..@j2117:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_COMPAREWORD$formal$formal$SMALLINT$$SMALLINT
EXTERN	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
