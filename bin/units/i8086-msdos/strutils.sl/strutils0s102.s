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
	GLOBAL STRUTILS_$$_ADDCHAR$CHAR$ANSISTRING$SMALLINT$$ANSISTRING
STRUTILS_$$_ADDCHAR$CHAR$ANSISTRING$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j2926
		mov	bx,word [bx-2]
..@j2926:
		mov	word [bp-2],bx
		mov	ax,word [bp-2]
		cmp	ax,word [bp+4]
		jl	..@j2927
		jmp	..@j2928
..@j2927:
		mov	ax,word [bp+10]
		push	ax
		lea	ax,[bp-4]
		push	ax
		mov	al,byte [bp+8]
		mov	ah,0
		push	ax
		mov	ax,word [bp+4]
		mov	dx,word [bp-2]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
		push	word [bp-4]
		mov	bx,word [bp+10]
		push	word [bx]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j2928:
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_concat
EXTERN	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
EXTERN	fpc_ansistr_assign
