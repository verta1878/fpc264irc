BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_GETSORTED$$BOOLEAN
CLASSES$_$TSTRINGLIST_$__$$_GETSORTED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx+39]
		dec	ax
		cmp	ax,2
		jb	..@j8869
..@j8869:
		mov	al,0
		jnc	..@j8870
		inc	ax
..@j8870:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
