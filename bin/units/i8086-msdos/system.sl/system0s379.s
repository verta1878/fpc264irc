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
	GLOBAL SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j9795
		mov	bx,word [bx-2]
..@j9795:
		mov	word [bp-4],1
		cmp	bx,word [bp-4]
		jl	..@j9797
		dec	word [bp-4]
	ALIGN 2
..@j9798:
		inc	word [bp-4]
		mov	si,word [bp-6]
		mov	al,byte [si]
		cmp	al,byte [bp+6]
		je	..@j9799
		jmp	..@j9800
..@j9799:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j9789
..@j9800:
		inc	word [bp-6]
		cmp	bx,word [bp-4]
		jg	..@j9798
..@j9797:
		mov	word [bp-2],0
..@j9789:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
