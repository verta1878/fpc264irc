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
	GLOBAL CLASSES$_$TPARSER_$__$$_ISALPHA$$BOOLEAN
CLASSES$_$TPARSER_$__$$_ISALPHA$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,65
		cmp	ax,26
		jb	..@j2949
		cmp	ax,30
		stc
		je	..@j2949
		sub	ax,32
		cmp	ax,26
		jb	..@j2949
..@j2949:
		mov	al,0
		jnc	..@j2950
		inc	ax
..@j2950:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
