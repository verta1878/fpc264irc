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
	GLOBAL STRUTILS_$$_EXTRACTWORDPOS$SMALLINT$ANSISTRING$TSYSCHARSET$SMALLINT$$ANSISTRING
STRUTILS_$$_EXTRACTWORDPOS$SMALLINT$ANSISTRING$TSYSCHARSET$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-4],0
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		call	STRUTILS_$$_WORDPOSITION$SMALLINT$ANSISTRING$TSYSCHARSET$$SMALLINT
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		cmp	word [bp-2],0
		jne	..@j3182
		jmp	..@j3183
..@j3182:
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j3188
		mov	bx,word [bx-2]
..@j3188:
		mov	word [bp-6],bx
		jmp	..@j3190
	ALIGN 2
..@j3189:
		inc	word [bp-4]
..@j3190:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3192
		jmp	..@j3191
..@j3192:
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j3193
		test	al,0
		jmp	..@j3194
..@j3193:
		mov	ax,1
		shl	ax,cl
		mov	bx,word [bp-8]
		test	word [bx+si],ax
..@j3194:
		je	..@j3189
		jmp	..@j3191
..@j3191:
..@j3183:
		mov	ax,word [bp+12]
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,dx
		cmp	ax,0
		jg	..@j3201
		jmp	..@j3202
..@j3201:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		lea	ax,[bx+si-1]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		call	fpc_ansistr_unique
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j3202:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	STRUTILS_$$_WORDPOSITION$SMALLINT$ANSISTRING$TSYSCHARSET$$SMALLINT
