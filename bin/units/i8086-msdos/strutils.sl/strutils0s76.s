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
	GLOBAL STRUTILS_$$_POSEX$CHAR$ANSISTRING$WORD$$SMALLINT
STRUTILS_$$_POSEX$CHAR$ANSISTRING$WORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2082
		mov	bx,word [bx-2]
..@j2082:
		mov	word [bp-6],bx
		cmp	word [bp+4],1
		jb	..@j2083
		jmp	..@j2085
..@j2085:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2086
		mov	bx,word [bx-2]
..@j2086:
		cmp	bx,word [bp+4]
		jb	..@j2083
		jmp	..@j2084
..@j2083:
		mov	word [bp-2],0
		jmp	..@j2078
..@j2084:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2091
		mov	bx,word [bx-2]
..@j2091:
		mov	word [bp-6],bx
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	ax,[bx+si-1]
		push	ax
		mov	ax,word [bp-6]
		cwd
		mov	cx,word [bp+4]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		add	ax,1
		adc	dx,0
		push	ax
		mov	al,byte [bp+8]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jl	..@j2100
		jmp	..@j2101
..@j2100:
		mov	word [bp-2],0
		jmp	..@j2104
..@j2101:
		mov	dx,word [bp-4]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [bp-2],ax
..@j2104:
..@j2078:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
