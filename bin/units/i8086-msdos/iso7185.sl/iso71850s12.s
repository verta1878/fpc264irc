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
	GLOBAL ISO7185_$$_PUT$TEXT
ISO7185_$$_PUT$TEXT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		inc	word [bx+10]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+6]
		jge	..@j126
		jmp	..@j127
..@j126:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+18]
		call	ax
..@j127:
		mov	sp,bp
		pop	bp
		ret	2
