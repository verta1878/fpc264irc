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
	GLOBAL SYSUTILS_$$_STRRSCAN$PCHAR$CHAR$$PCHAR
SYSUTILS_$$_STRRSCAN$PCHAR$CHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+6]
		call	FPC_PCHAR_LENGTH
		mov	word [bp-4],ax
		cmp	byte [bp+4],0
		je	..@j12529
		jmp	..@j12530
..@j12529:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j12523
..@j12530:
		dec	word [bp-4]
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jl	..@j12534
		inc	word [bp-6]
	ALIGN 2
..@j12535:
		dec	word [bp-6]
		mov	bx,word [bp+6]
		mov	si,word [bp-6]
		mov	al,byte [bx+si]
		cmp	al,byte [bp+4]
		je	..@j12536
		jmp	..@j12537
..@j12536:
		mov	bx,word [bp+6]
		mov	si,word [bp-6]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j12523
..@j12537:
		cmp	word [bp-6],0
		jg	..@j12535
..@j12534:
		mov	word [bp-2],0
..@j12523:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_PCHAR_LENGTH
