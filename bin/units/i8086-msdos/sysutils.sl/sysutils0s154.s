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
	GLOBAL SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READLEFT
SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READLEFT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	si,word [si-2]
		cmp	byte [bx+si-1],45
		je	..@j5079
		jmp	..@j5080
..@j5079:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	byte [bx-25],1
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		inc	word [bx-2]
		jmp	..@j5083
..@j5080:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	byte [bx-25],0
..@j5083:
		mov	sp,bp
		pop	bp
		ret	2
