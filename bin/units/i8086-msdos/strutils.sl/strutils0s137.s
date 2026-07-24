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
	GLOBAL STRUTILS_$$_RPOSEX$CHAR$ANSISTRING$LONGWORD$$SMALLINT
STRUTILS_$$_RPOSEX$CHAR$ANSISTRING$LONGWORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j4260
		mov	bx,word [bx-2]
..@j4260:
		mov	word [bp-4],bx
		cmp	word [bp-4],0
		jne	..@j4263
		jmp	..@j4262
..@j4263:
		mov	dx,word [bp-4]
		mov	ax,0
		cmp	ax,word [bp+6]
		ja	..@j4261
		jb	..@j4262
		cmp	dx,word [bp+4]
		jae	..@j4261
		jmp	..@j4262
		jmp	..@j4262
..@j4261:
		mov	bx,word [bp+8]
		mov	si,word [bp+4]
		lea	ax,[bx+si-1]
		mov	word [bp-6],ax
		mov	ax,word [bp+8]
		mov	word [bp-8],ax
		jmp	..@j4269
	ALIGN 2
..@j4268:
		dec	word [bp-6]
..@j4269:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-6]
		jbe	..@j4271
		jmp	..@j4270
..@j4271:
		mov	bx,word [bp-6]
		mov	al,byte [bx]
		cmp	al,byte [bp+10]
		jne	..@j4268
		jmp	..@j4270
..@j4270:
		mov	ax,word [bp-6]
		mov	dx,word [bp-8]
		sub	ax,dx
		inc	ax
		mov	word [bp-2],ax
		jmp	..@j4274
..@j4262:
		mov	word [bp-2],0
..@j4274:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
