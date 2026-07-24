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
	GLOBAL SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETSECTIONEND$PCHAR$$BOOLEAN
SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETSECTIONEND$PCHAR$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	byte [bp-1],0
		mov	byte [bp-3],0
		mov	byte [bp-4],0
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	al,byte [bx]
		mov	byte [bp-2],al
		jmp	..@j8235
	ALIGN 2
..@j8234:
		mov	byte [bp-1],1
		mov	al,byte [bp-2]
		cmp	al,34
		jb	..@j8240
		sub	al,34
		je	..@j8241
		sub	al,5
		je	..@j8242
		jmp	..@j8240
..@j8241:
		cmp	byte [bp-3],0
		je	..@j8243
		jmp	..@j8244
..@j8243:
		cmp	byte [bp-4],0
		mov	al,0
		jne	..@j8247
		inc	ax
..@j8247:
		mov	byte [bp-4],al
..@j8244:
		jmp	..@j8239
..@j8242:
		cmp	byte [bp-4],0
		je	..@j8248
		jmp	..@j8249
..@j8248:
		cmp	byte [bp-3],0
		mov	al,0
		jne	..@j8252
		inc	ax
..@j8252:
		mov	byte [bp-3],al
..@j8249:
		jmp	..@j8239
..@j8240:
..@j8239:
		mov	bx,word [bp+4]
		inc	word [bx]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	al,byte [bx]
		mov	byte [bp-2],al
..@j8235:
		cmp	byte [bp-2],0
		jne	..@j8255
		jmp	..@j8236
..@j8255:
		cmp	byte [bp-2],59
		jne	..@j8234
		jmp	..@j8257
..@j8257:
		cmp	byte [bp-3],0
		jne	..@j8234
		jmp	..@j8256
..@j8256:
		cmp	byte [bp-4],0
		jne	..@j8234
		jmp	..@j8236
..@j8236:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
