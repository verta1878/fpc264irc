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
	GLOBAL SYSUTILS_$$_COMPARESTR$ANSISTRING$ANSISTRING$$SMALLINT
SYSUTILS_$$_COMPARESTR$ANSISTRING$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2841
		mov	bx,word [bx-2]
..@j2841:
		mov	word [bp-6],bx
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j2844
		mov	bx,word [bx-2]
..@j2844:
		mov	word [bp-8],bx
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		jg	..@j2845
		jmp	..@j2846
..@j2845:
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		jmp	..@j2849
..@j2846:
		mov	ax,word [bp-6]
		mov	word [bp-4],ax
..@j2849:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-4]
		call	SYSUTILS_$$_COMPAREMEMRANGE$POINTER$POINTER$WORD$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j2860
		jmp	..@j2861
..@j2860:
		mov	ax,word [bp-6]
		mov	dx,word [bp-8]
		sub	ax,dx
		mov	word [bp-2],ax
..@j2861:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_COMPAREMEMRANGE$POINTER$POINTER$WORD$$SMALLINT
