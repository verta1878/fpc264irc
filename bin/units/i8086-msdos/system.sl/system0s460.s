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
	GLOBAL fpc_unicodestr_to_widechararray
fpc_unicodestr_to_widechararray:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j11736
		mov	bx,word [bx-2]
..@j11736:
		mov	word [bp-2],bx
		mov	ax,word [bp+6]
		inc	ax
		cmp	ax,word [bp-2]
		jl	..@j11737
		jmp	..@j11738
..@j11737:
		mov	ax,word [bp+6]
		inc	ax
		mov	word [bp-2],ax
..@j11738:
		cmp	word [bp-2],0
		jg	..@j11741
		jmp	..@j11742
..@j11741:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-2]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j11742:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp+6]
		inc	ax
		mov	dx,word [bp-2]
		sub	ax,dx
		shl	ax,1
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
