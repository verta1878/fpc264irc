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
	GLOBAL STRUTILS_$$_RIGHTSTR$WIDESTRING$SMALLINT$$WIDESTRING
STRUTILS_$$_RIGHTSTR$WIDESTRING$SMALLINT$$WIDESTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-6],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1781
		mov	bx,word [bx-2]
..@j1781:
		mov	word [bp-4],bx
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jg	..@j1784
		jmp	..@j1785
..@j1784:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j1785:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-6]
		push	ax
		push	word [bp+6]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,dx
		inc	ax
		push	ax
		push	word [bp-2]
		call	fpc_unicodestr_copy
		push	word [bp-6]
		call	fpc_unicodestr_assign
		lea	ax,[bp-6]
		push	ax
		call	fpc_unicodestr_decr_ref
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_unicodestr_decr_ref
EXTERN	fpc_unicodestr_assign
EXTERN	fpc_unicodestr_copy
