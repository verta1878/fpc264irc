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
	GLOBAL STRINGS_$$_STRLOWER$PCHAR$$PCHAR
STRINGS_$$_STRLOWER$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		jmp	..@j51
	ALIGN 2
..@j50:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,65
		cmp	ax,26
		jb	..@j55
..@j55:
		jc	..@j53
		jmp	..@j54
..@j53:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		add	ax,32
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	byte [bx+si],al
..@j54:
		inc	word [bp-4]
..@j51:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		jne	..@j50
		jmp	..@j52
..@j52:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
