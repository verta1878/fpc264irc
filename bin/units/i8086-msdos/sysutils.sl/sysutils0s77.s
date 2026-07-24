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
	GLOBAL SYSUTILS_$$_FILEISREADONLY$UNICODESTRING$$BOOLEAN
SYSUTILS_$$_FILEISREADONLY$UNICODESTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		call	SYSUTILS_$$_FILEGETATTR$UNICODESTRING$$LONGINT
		and	ax,1
		mov	dx,0
		cmp	dx,0
		jne	..@j2657
		cmp	ax,0
		jne	..@j2657
		jmp	..@j2658
..@j2657:
		mov	byte [bp-1],1
		jmp	..@j2661
..@j2658:
		mov	byte [bp-1],0
..@j2661:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_FILEGETATTR$UNICODESTRING$$LONGINT
