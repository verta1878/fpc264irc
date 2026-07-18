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
	GLOBAL STRINGS_$$_STRUPPER$PCHAR$$PCHAR
STRINGS_$$_STRUPPER$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		jmp	..@j35
	ALIGN 2
..@j34:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,97
		cmp	ax,26
		jb	..@j39
		sub	ax,31
		cmp	ax,128
		jb	..@j39
..@j39:
		jc	..@j37
		jmp	..@j38
..@j37:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	byte [bx+si],al
..@j38:
		inc	word [bp-4]
..@j35:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		jne	..@j34
		jmp	..@j36
..@j36:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
