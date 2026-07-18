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
	GLOBAL STRINGS_$$_STRISCAN$PCHAR$CHAR$$PCHAR
STRINGS_$$_STRISCAN$PCHAR$CHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-5],al
		mov	word [bp-4],0
		cmp	byte [bp-5],0
		je	..@j87
		jmp	..@j88
..@j87:
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
		push	word [bp+6]
		call	FPC_PCHAR_LENGTH
		mov	si,ax
		mov	bx,word [bp-8]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j79
..@j88:
		jmp	..@j94
	ALIGN 2
..@j93:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		cmp	al,byte [bp-5]
		je	..@j96
		jmp	..@j97
..@j96:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j79
..@j97:
		inc	word [bp-4]
..@j94:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		jne	..@j93
		jmp	..@j95
..@j95:
		mov	word [bp-2],0
..@j79:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_PCHAR_LENGTH
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
