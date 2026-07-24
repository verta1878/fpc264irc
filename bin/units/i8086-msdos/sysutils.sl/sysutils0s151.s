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
	GLOBAL SYSUTILS$_$FORMAT$crc784D66F0_$$_READFORMAT$$CHAR
SYSUTILS$_$FORMAT$crc784D66F0_$$_READFORMAT$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	word [bx-16],-1
		mov	bx,word [bp+4]
		mov	word [bx-20],-1
		mov	word [bx-18],-1
		mov	bx,word [bp+4]
		mov	word [bx-24],-1
		mov	word [bx-22],-1
		mov	word [bp-6],-1
		mov	word [bp-4],-1
		mov	bx,word [bp+4]
		inc	word [bx-2]
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si-2]
		cmp	byte [bx+si-1],37
		je	..@j5045
		jmp	..@j5046
..@j5045:
		mov	byte [bp-1],37
		jmp	..@j4090
..@j5046:
		push	bp
		call	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READINDEX
		push	bp
		call	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READLEFT
		push	bp
		call	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READWIDTH
		push	bp
		call	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READPREC
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si-2]
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-1],al
..@j4090:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
EXTERN	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READPREC
EXTERN	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READWIDTH
EXTERN	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READLEFT
EXTERN	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READINDEX
