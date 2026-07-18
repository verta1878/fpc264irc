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
	GLOBAL SYSUTILS_$$_CHARTOBYTELEN$ANSISTRING$SMALLINT$$SMALLINT
SYSUTILS_$$_CHARTOBYTELEN$ANSISTRING$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j8838
		mov	bx,word [bx-2]
..@j8838:
		mov	word [bp-2],bx
		mov	ax,word [bp-2]
		cmp	ax,word [bp+4]
		jg	..@j8839
		jmp	..@j8840
..@j8839:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
..@j8840:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
