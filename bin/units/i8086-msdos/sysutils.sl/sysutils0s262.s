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
	GLOBAL SYSUTILS$_$SSCANF$crcFD40E9A9_$$_SCANSTR$CHAR$$BOOLEAN
SYSUTILS$_$SSCANF$crcFD40E9A9_$$_SCANSTR$CHAR$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		jmp	..@j9225
	ALIGN 2
..@j9224:
		mov	bx,word [bp+6]
		inc	word [bx-8]
..@j9225:
		mov	bx,word [bp+6]
		mov	si,word [bx+10]
		test	si,si
		je	..@j9228
		mov	si,word [si-2]
..@j9228:
		mov	bx,word [bp+6]
		cmp	si,word [bx-8]
		jg	..@j9227
		jmp	..@j9226
..@j9227:
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	si,word [bp+6]
		mov	si,word [si-8]
		mov	al,byte [bx+si-1]
		cmp	al,byte [bp+4]
		jne	..@j9224
		jmp	..@j9226
..@j9226:
		mov	bx,word [bp+6]
		inc	word [bx-8]
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		test	bx,bx
		je	..@j9231
		mov	bx,word [bx-2]
..@j9231:
		mov	si,word [bp+6]
		cmp	bx,word [si-8]
		jge	..@j9229
		jmp	..@j9230
..@j9229:
		mov	byte [bp-1],1
		jmp	..@j9234
..@j9230:
		mov	byte [bp-1],0
..@j9234:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
