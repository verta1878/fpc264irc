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
	GLOBAL SYSUTILS_$$_STREND$PCHAR$$PCHAR
SYSUTILS_$$_STREND$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		jmp	..@j12427
	ALIGN 2
..@j12426:
		inc	word [bp-4]
..@j12427:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		jne	..@j12426
		jmp	..@j12428
..@j12428:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
