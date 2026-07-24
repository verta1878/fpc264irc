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
	GLOBAL SYSUTILS_$$_STRLCOPY$PCHAR$PCHAR$SMALLINT$$PCHAR
SYSUTILS_$$_STRLCOPY$PCHAR$PCHAR$SMALLINT$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-4],0
		mov	bx,word [bp+6]
		cmp	byte [bx],0
		je	..@j12589
		jmp	..@j12590
..@j12589:
		mov	si,word [bp+8]
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	byte [si],al
		inc	word [bp-4]
..@j12590:
		jmp	..@j12594
	ALIGN 2
..@j12593:
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	di,word [bp-4]
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	bx,word [bp-6]
		mov	byte [bx+di],al
		inc	word [bp-4]
..@j12594:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		jne	..@j12598
		jmp	..@j12595
..@j12598:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		jl	..@j12593
		jmp	..@j12595
..@j12595:
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		mov	byte [bx+si],0
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
