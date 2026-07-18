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
	GLOBAL STRINGS_$$_STRSCAN$PCHAR$CHAR$$PCHAR
STRINGS_$$_STRSCAN$PCHAR$CHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-4],0
		cmp	byte [bp+4],0
		je	..@j64
		jmp	..@j65
..@j64:
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		push	word [bp+6]
		call	FPC_PCHAR_LENGTH
		mov	si,ax
		mov	bx,word [bp-6]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j60
..@j65:
		jmp	..@j71
	ALIGN 2
..@j70:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		cmp	al,byte [bp+4]
		je	..@j73
		jmp	..@j74
..@j73:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j60
..@j74:
		inc	word [bp-4]
..@j71:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		jne	..@j70
		jmp	..@j72
..@j72:
		mov	word [bp-2],0
..@j60:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_PCHAR_LENGTH
