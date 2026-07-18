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
	GLOBAL STRUTILS_$$_DELCHARS$ANSISTRING$CHAR$$ANSISTRING
STRUTILS_$$_DELCHARS$ANSISTRING$CHAR$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j2814
		mov	bx,word [bx-2]
..@j2814:
		mov	word [bp-2],bx
		jmp	..@j2816
	ALIGN 2
..@j2815:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	si,word [bp-2]
		mov	al,byte [bx+si-1]
		cmp	al,byte [bp+4]
		je	..@j2818
		jmp	..@j2819
..@j2818:
		mov	ax,word [bp-2]
		dec	ax
		mov	word [bp-4],ax
		jmp	..@j2823
	ALIGN 2
..@j2822:
		dec	word [bp-4]
..@j2823:
		cmp	word [bp-4],0
		jg	..@j2825
		jmp	..@j2824
..@j2825:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	si,word [bp-4]
		mov	al,byte [bx+si-1]
		cmp	al,byte [bp+4]
		je	..@j2822
		jmp	..@j2824
..@j2824:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-4]
		inc	ax
		push	ax
		mov	ax,word [bp-2]
		mov	dx,word [bp-4]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		mov	ax,word [bp-4]
		inc	ax
		mov	word [bp-2],ax
..@j2819:
		dec	word [bp-2]
..@j2816:
		cmp	word [bp-2],0
		jg	..@j2815
		jmp	..@j2817
..@j2817:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	fpc_ansistr_assign
