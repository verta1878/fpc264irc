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
	GLOBAL SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READPREC
SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READPREC:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	si,word [si-2]
		cmp	byte [bx+si-1],46
		je	..@j5061
		jmp	..@j5062
..@j5061:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		inc	word [bx-2]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READINTEGER
		mov	bx,word [bp+4]
		mov	dx,word [bx-6]
		mov	ax,word [bx-4]
		cmp	ax,-1
		jne	..@j5066
		cmp	dx,-1
		jne	..@j5066
		jmp	..@j5065
..@j5065:
		mov	bx,word [bp+4]
		mov	word [bx-6],0
		mov	word [bx-4],0
..@j5066:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	ax,word [si-6]
		mov	word [bx-24],ax
		mov	ax,word [si-4]
		mov	word [bx-22],ax
..@j5062:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READINTEGER
