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
	GLOBAL STRINGS_$$_STRRSCAN$PCHAR$CHAR$$PCHAR
STRINGS_$$_STRRSCAN$PCHAR$CHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+6]
		call	FPC_PCHAR_LENGTH
		mov	word [bp-4],ax
		cmp	byte [bp+4],0
		je	..@j110
		jmp	..@j111
..@j110:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j104
..@j111:
		dec	word [bp-4]
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jl	..@j115
		inc	word [bp-6]
	ALIGN 2
..@j116:
		dec	word [bp-6]
		mov	bx,word [bp+6]
		mov	si,word [bp-6]
		mov	al,byte [bx+si]
		cmp	al,byte [bp+4]
		je	..@j117
		jmp	..@j118
..@j117:
		mov	bx,word [bp+6]
		mov	si,word [bp-6]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j104
..@j118:
		cmp	word [bp-6],0
		jg	..@j116
..@j115:
		mov	word [bp-2],0
..@j104:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_PCHAR_LENGTH
