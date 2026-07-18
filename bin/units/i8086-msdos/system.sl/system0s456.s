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
	GLOBAL fpc_widechararray_to_widestr
fpc_widechararray_to_widestr:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	byte [bp+4],0
		jne	..@j11574
		jmp	..@j11575
..@j11574:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],-1
		je	..@j11584
		jmp	..@j11585
..@j11584:
		mov	ax,word [bp+6]
		inc	ax
		mov	word [bp-2],ax
..@j11585:
		jmp	..@j11588
..@j11575:
		mov	ax,word [bp+6]
		inc	ax
		mov	word [bp-2],ax
..@j11588:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-2]
		call	fpc_unicodestr_setlength
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-2]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_unicodestr_setlength
EXTERN	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
