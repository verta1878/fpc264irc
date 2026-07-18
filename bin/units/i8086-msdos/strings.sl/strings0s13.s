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
	GLOBAL STRINGS_$$_STRICOMP$PCHAR$PCHAR$$SMALLINT
STRINGS_$$_STRICOMP$PCHAR$PCHAR$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-4],0
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-5],al
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-6],al
		jmp	..@j209
	ALIGN 2
..@j208:
		cmp	byte [bp-5],0
		je	..@j211
		jmp	..@j213
..@j213:
		cmp	byte [bp-6],0
		je	..@j211
		jmp	..@j212
..@j211:
		jmp	..@j210
..@j212:
		inc	word [bp-4]
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-5],al
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-6],al
..@j209:
		mov	al,byte [bp-5]
		cmp	al,byte [bp-6]
		je	..@j208
		jmp	..@j210
..@j210:
		mov	al,byte [bp-5]
		mov	ah,0
		mov	dl,byte [bp-6]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
