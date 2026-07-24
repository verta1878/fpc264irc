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
	GLOBAL SHA1_$$_SHA1UPDATE$TSHA1CONTEXT$formal$WORD
SHA1_$$_SHA1UPDATE$TSHA1CONTEXT$formal$WORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		je	..@j160
		jmp	..@j161
..@j160:
		jmp	..@j158
..@j161:
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	word [bp-4],0
		mov	bx,word [bp+8]
		cmp	word [bx+84],0
		ja	..@j166
		jmp	..@j167
..@j166:
		mov	bx,word [bp+8]
		mov	cx,word [bx+84]
		mov	bx,0
		mov	ax,64
		mov	dx,0
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-4],ax
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		ja	..@j170
		jmp	..@j171
..@j170:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
..@j171:
		mov	ax,word [bp-2]
		push	ax
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	si,word [si+84]
		lea	ax,[bx+si+20]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+8]
		mov	ax,word [bp-4]
		add	word [bx+84],ax
		mov	ax,word [bp-4]
		add	word [bp-2],ax
		mov	bx,word [bp+8]
		cmp	word [bx+84],64
		je	..@j180
		jmp	..@j181
..@j180:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+20]
		push	ax
		call	SHA1_$$_SHA1TRANSFORM$TSHA1CONTEXT$POINTER
		mov	bx,word [bp+8]
		mov	word [bx+84],0
..@j181:
..@j167:
		mov	ax,word [bp+4]
		mov	dx,0
		mov	cx,word [bp-4]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-4],ax
		jmp	..@j191
	ALIGN 2
..@j190:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-2]
		call	SHA1_$$_SHA1TRANSFORM$TSHA1CONTEXT$POINTER
		add	word [bp-2],64
		sub	word [bp-4],64
..@j191:
		cmp	word [bp-4],64
		jae	..@j190
		jmp	..@j192
..@j192:
		cmp	word [bp-4],0
		ja	..@j197
		jmp	..@j198
..@j197:
		mov	bx,word [bp+8]
		mov	ax,word [bp-4]
		mov	word [bx+84],ax
		mov	ax,word [bp-2]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+20]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j198:
..@j158:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SHA1_$$_SHA1TRANSFORM$TSHA1CONTEXT$POINTER
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
