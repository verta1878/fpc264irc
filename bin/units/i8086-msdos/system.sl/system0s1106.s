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
	GLOBAL fpc_read_text_char
fpc_read_text_char:
	GLOBAL FPC_READ_TEXT_CHAR
FPC_READ_TEXT_CHAR:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	byte [bx],0
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23321
		jmp	..@j23322
..@j23321:
		jmp	..@j23317
..@j23322:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23325
		jmp	..@j23326
..@j23325:
		mov	bx,word [bp+4]
		mov	byte [bx],26
		jmp	..@j23317
..@j23326:
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		mov	di,word [bp+4]
		mov	al,byte [bx+si]
		mov	byte [di],al
		mov	bx,word [bp+6]
		inc	word [bx+10]
..@j23317:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
