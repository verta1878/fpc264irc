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
	GLOBAL STRINGS_$$_STRLCOPY$PCHAR$PCHAR$SMALLINT$$PCHAR
STRINGS_$$_STRLCOPY$PCHAR$PCHAR$SMALLINT$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-4],0
		mov	bx,word [bp+6]
		cmp	byte [bx],0
		je	..@j170
		jmp	..@j171
..@j170:
		mov	si,word [bp+8]
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	byte [si],al
		inc	word [bp-4]
..@j171:
		jmp	..@j175
	ALIGN 2
..@j174:
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	di,word [bp-4]
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	bx,word [bp-6]
		mov	byte [bx+di],al
		inc	word [bp-4]
..@j175:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		jne	..@j179
		jmp	..@j176
..@j179:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		jl	..@j174
		jmp	..@j176
..@j176:
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		mov	byte [bx+si],0
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
