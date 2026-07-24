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
	GLOBAL SYSTEM_$$_POS$WIDECHAR$UNICODESTRING$$SMALLINT
SYSTEM_$$_POS$WIDECHAR$UNICODESTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j12207
		mov	bx,word [bx-2]
..@j12207:
		mov	word [bp-4],1
		cmp	bx,word [bp-4]
		jl	..@j12209
		dec	word [bp-4]
	ALIGN 2
..@j12210:
		inc	word [bp-4]
		mov	si,word [bp-6]
		mov	ax,word [si]
		cmp	ax,word [bp+6]
		je	..@j12211
		jmp	..@j12212
..@j12211:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j12201
..@j12212:
		add	word [bp-6],2
		cmp	bx,word [bp-4]
		jg	..@j12210
..@j12209:
		mov	word [bp-2],0
..@j12201:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
