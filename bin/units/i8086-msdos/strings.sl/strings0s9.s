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
	GLOBAL STRINGS_$$_STRRISCAN$PCHAR$CHAR$$PCHAR
STRINGS_$$_STRRISCAN$PCHAR$CHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-7],al
		push	word [bp+6]
		call	FPC_PCHAR_LENGTH
		mov	word [bp-4],ax
		cmp	byte [bp-7],0
		je	..@j133
		jmp	..@j134
..@j133:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j123
..@j134:
		dec	word [bp-4]
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jl	..@j138
		inc	word [bp-6]
	ALIGN 2
..@j139:
		dec	word [bp-6]
		mov	bx,word [bp+6]
		mov	si,word [bp-6]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		cmp	al,byte [bp-7]
		je	..@j140
		jmp	..@j141
..@j140:
		mov	bx,word [bp+6]
		mov	si,word [bp-6]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j123
..@j141:
		cmp	word [bp-6],0
		jg	..@j139
..@j138:
		mov	word [bp-2],0
..@j123:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_PCHAR_LENGTH
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
