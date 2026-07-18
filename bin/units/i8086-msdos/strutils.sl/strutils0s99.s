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
	GLOBAL STRUTILS_$$_DELSPACE1$ANSISTRING$$ANSISTRING
STRUTILS_$$_DELSPACE1$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j2843
		mov	bx,word [bx-2]
..@j2843:
		mov	word [bp-2],bx
		cmp	word [bp-2],2
		jl	..@j2841
		inc	word [bp-2]
	ALIGN 2
..@j2842:
		dec	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	si,word [bp-2]
		cmp	byte [bx+si-1],32
		je	..@j2846
		jmp	..@j2845
..@j2846:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bp-2]
		mov	si,ax
		dec	si
		cmp	byte [bx+si-1],32
		je	..@j2844
		jmp	..@j2845
..@j2844:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j2845:
		cmp	word [bp-2],2
		jg	..@j2842
..@j2841:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	fpc_ansistr_assign
