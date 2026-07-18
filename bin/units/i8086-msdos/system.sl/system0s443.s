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
	GLOBAL fpc_unicodestr_concat
fpc_unicodestr_concat:
		push	bp
		mov	bp,sp
		sub	sp,6
		cmp	word [bp+6],0
		je	..@j11143
		jmp	..@j11144
..@j11143:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		call	fpc_unicodestr_assign
		jmp	..@j11141
..@j11144:
		cmp	word [bp+4],0
		je	..@j11149
		jmp	..@j11150
..@j11149:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		call	fpc_unicodestr_assign
		jmp	..@j11141
..@j11150:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j11157
		mov	bx,word [bx-2]
..@j11157:
		mov	word [bp-4],bx
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j11160
		mov	bx,word [bx-2]
..@j11160:
		mov	word [bp-2],bx
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		cmp	ax,word [bp+6]
		je	..@j11161
		jmp	..@j11162
..@j11161:
		mov	ax,word [bp+6]
		cmp	ax,word [bp+4]
		mov	al,0
		jne	..@j11165
		inc	ax
..@j11165:
		mov	byte [bp-5],al
		mov	ax,word [bp+8]
		push	ax
		mov	dx,word [bp-2]
		mov	ax,word [bp-4]
		add	ax,dx
		push	ax
		call	fpc_unicodestr_setlength
		cmp	byte [bp-5],0
		jne	..@j11170
		jmp	..@j11171
..@j11170:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-4]
		shl	ax,1
		mov	bx,word [bp+8]
		mov	dx,word [bx]
		add	dx,ax
		push	dx
		mov	ax,word [bp-2]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j11178
..@j11171:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-4]
		shl	ax,1
		mov	bx,word [bp+8]
		mov	dx,word [bx]
		add	dx,ax
		push	dx
		mov	ax,word [bp-2]
		inc	ax
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j11178:
		jmp	..@j11185
..@j11162:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		cmp	ax,word [bp+4]
		je	..@j11186
		jmp	..@j11187
..@j11186:
		mov	ax,word [bp+8]
		push	ax
		mov	dx,word [bp-2]
		mov	ax,word [bp-4]
		add	ax,dx
		push	ax
		call	fpc_unicodestr_setlength
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-4]
		shl	ax,1
		mov	bx,word [bp+8]
		mov	dx,word [bx]
		add	dx,ax
		push	dx
		mov	ax,word [bp-2]
		inc	ax
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-4]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j11204
..@j11187:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		mov	ax,word [bp+8]
		push	ax
		mov	dx,word [bp-2]
		mov	ax,word [bp-4]
		add	ax,dx
		push	ax
		call	fpc_unicodestr_setlength
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-4]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-4]
		shl	ax,1
		mov	bx,word [bp+8]
		mov	dx,word [bx]
		add	dx,ax
		push	dx
		mov	ax,word [bp-2]
		inc	ax
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j11204:
..@j11185:
..@j11141:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_unicodestr_setlength
EXTERN	fpc_unicodestr_assign
