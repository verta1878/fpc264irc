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
	GLOBAL SYSUTILS_$$_RIGHTSTR$ANSISTRING$SMALLINT$$ANSISTRING
SYSUTILS_$$_RIGHTSTR$ANSISTRING$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j8586
		mov	bx,word [bx-2]
..@j8586:
		cmp	bx,word [bp+4]
		jl	..@j8584
		jmp	..@j8585
..@j8584:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j8589
		mov	bx,word [bx-2]
..@j8589:
		mov	word [bp+4],bx
..@j8585:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j8596
		mov	bx,word [bx-2]
..@j8596:
		inc	bx
		mov	ax,word [bp+4]
		sub	bx,ax
		push	bx
		push	word [bp+4]
		call	fpc_ansistr_copy
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_copy
