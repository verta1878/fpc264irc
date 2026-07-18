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
	GLOBAL SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READWIDTH
SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READWIDTH:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READINTEGER
		mov	bx,word [bp+4]
		mov	dx,word [bx-6]
		mov	ax,word [bx-4]
		cmp	ax,-1
		jne	..@j5073
		cmp	dx,-1
		jne	..@j5073
		jmp	..@j5074
..@j5073:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	ax,word [si-6]
		mov	word [bx-20],ax
		mov	ax,word [si-4]
		mov	word [bx-18],ax
		mov	bx,word [bp+4]
		mov	word [bx-6],-1
		mov	word [bx-4],-1
..@j5074:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READINTEGER
