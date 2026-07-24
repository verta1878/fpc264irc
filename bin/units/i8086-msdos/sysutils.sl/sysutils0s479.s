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
	GLOBAL SYSUTILS_$$_FILECLOSE$WORD
SYSUTILS_$$_FILECLOSE$WORD:
		push	bp
		mov	bp,sp
		sub	sp,20
		cmp	word [bp+4],4
		jbe	..@j15321
		jmp	..@j15322
..@j15321:
		jmp	..@j15319
..@j15322:
		mov	word [bp-20],15872
		mov	ax,word [bp+4]
		mov	word [bp-18],ax
		mov	ax,33
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
..@j15319:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_INTR
