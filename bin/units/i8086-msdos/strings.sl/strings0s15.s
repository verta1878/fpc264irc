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
	GLOBAL STRINGS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
STRINGS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-4],0
		cmp	word [bp+4],0
		je	..@j249
		jmp	..@j250
..@j249:
		mov	word [bp-2],0
		jmp	..@j245
..@j250:
	ALIGN 2
..@j253:
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-5],al
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-6],al
		cmp	byte [bp-5],0
		je	..@j264
		jmp	..@j266
..@j266:
		cmp	byte [bp-6],0
		je	..@j264
		jmp	..@j265
..@j264:
		jmp	..@j255
..@j265:
		inc	word [bp-4]
		mov	al,byte [bp-5]
		cmp	al,byte [bp-6]
		jne	..@j255
		jmp	..@j267
..@j267:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		jge	..@j255
		jmp	..@j253
..@j255:
		mov	al,byte [bp-5]
		mov	ah,0
		mov	dl,byte [bp-6]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
..@j245:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
