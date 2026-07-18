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
	GLOBAL SYSUTILS_$$_STRLOWER$PCHAR$$PCHAR
SYSUTILS_$$_STRLOWER$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		jmp	..@j12470
	ALIGN 2
..@j12469:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,65
		cmp	ax,26
		jb	..@j12474
..@j12474:
		jc	..@j12472
		jmp	..@j12473
..@j12472:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		add	ax,32
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	byte [bx+si],al
..@j12473:
		inc	word [bp-4]
..@j12470:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		jne	..@j12469
		jmp	..@j12471
..@j12471:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
