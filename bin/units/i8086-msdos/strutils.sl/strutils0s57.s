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
	GLOBAL STRUTILS_$$_RIGHTSTR$ANSISTRING$SMALLINT$$ANSISTRING
STRUTILS_$$_RIGHTSTR$ANSISTRING$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1654
		mov	bx,word [bx-2]
..@j1654:
		mov	word [bp-4],bx
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jg	..@j1657
		jmp	..@j1658
..@j1657:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j1658:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,dx
		inc	ax
		push	ax
		push	word [bp-2]
		call	fpc_ansistr_copy
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_copy
