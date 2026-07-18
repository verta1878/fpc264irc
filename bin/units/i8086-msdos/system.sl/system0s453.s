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
	GLOBAL fpc_widechararray_to_unicodestr
fpc_widechararray_to_unicodestr:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	byte [bp+4],0
		jne	..@j11465
		jmp	..@j11466
..@j11465:
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
		je	..@j11475
		jmp	..@j11476
..@j11475:
		mov	ax,word [bp+6]
		inc	ax
		mov	word [bp-2],ax
..@j11476:
		jmp	..@j11479
..@j11466:
		mov	ax,word [bp+6]
		inc	ax
		mov	word [bp-2],ax
..@j11479:
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
