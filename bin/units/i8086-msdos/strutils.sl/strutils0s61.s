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
	GLOBAL STRUTILS_$$_MIDBSTR$ANSISTRING$SMALLINT$SMALLINT$$ANSISTRING
STRUTILS_$$_MIDBSTR$ANSISTRING$SMALLINT$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		cmp	word [bp+4],0
		je	..@j1712
		jmp	..@j1714
..@j1714:
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j1715
		mov	bx,word [bx-2]
..@j1715:
		cmp	bx,word [bp+6]
		jl	..@j1712
		jmp	..@j1713
..@j1712:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j1711
..@j1713:
		mov	ax,word [bp+10]
		push	ax
		lea	ax,[bp-2]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	fpc_ansistr_copy
		push	word [bp-2]
		call	fpc_ansistr_assign
..@j1711:
		mov	ax,word [bp+10]
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_copy
EXTERN	fpc_ansistr_assign
