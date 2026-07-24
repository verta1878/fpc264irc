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
	GLOBAL fpc_unicodestr_copy
fpc_unicodestr_copy:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		dec	word [bp+6]
		cmp	word [bp+6],0
		jl	..@j12138
		jmp	..@j12139
..@j12138:
		mov	word [bp+6],0
..@j12139:
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j12145
		mov	bx,word [bx-2]
..@j12145:
		cmp	bx,word [bp+4]
		jl	..@j12142
		jmp	..@j12144
..@j12144:
		mov	dx,word [bp+6]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j12146
		mov	bx,word [bx-2]
..@j12146:
		cmp	ax,bx
		jg	..@j12142
		jmp	..@j12143
..@j12142:
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j12149
		mov	bx,word [bx-2]
..@j12149:
		mov	ax,word [bp+6]
		sub	bx,ax
		mov	word [bp+4],bx
..@j12143:
		cmp	word [bp+4],0
		jg	..@j12150
		jmp	..@j12151
..@j12150:
		push	word [bp+4]
		call	SYSTEM_$$_NEWUNICODESTRING$SMALLINT$$POINTER
		mov	word [bp-2],ax
		mov	bx,word [bp+8]
		test	bx,bx
		jne	..@j12158
		mov	bx,word FPC_EMPTYCHAR
..@j12158:
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		mov	ax,word [bp+4]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp-2]
		mov	ax,word [bp+4]
		mov	word [bx-2],ax
		mov	ax,word [bp+4]
		shl	ax,1
		mov	bx,word [bp-2]
		add	bx,ax
		mov	word [bx],0
..@j12151:
		mov	ax,word [bp+10]
		push	ax
		call	FPC_UNICODESTR_DECR_REF
		mov	bx,word [bp+10]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_UNICODESTR_DECR_REF
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FPC_EMPTYCHAR
EXTERN	SYSTEM_$$_NEWUNICODESTRING$SMALLINT$$POINTER
