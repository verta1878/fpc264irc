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
	GLOBAL SYSUTILS_$$_STRSCAN$PCHAR$CHAR$$PCHAR
SYSUTILS_$$_STRSCAN$PCHAR$CHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-4],0
		cmp	byte [bp+4],0
		je	..@j12483
		jmp	..@j12484
..@j12483:
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		push	word [bp+6]
		call	FPC_PCHAR_LENGTH
		mov	si,ax
		mov	bx,word [bp-6]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j12479
..@j12484:
		jmp	..@j12490
	ALIGN 2
..@j12489:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		cmp	al,byte [bp+4]
		je	..@j12492
		jmp	..@j12493
..@j12492:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j12479
..@j12493:
		inc	word [bp-4]
..@j12490:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		jne	..@j12489
		jmp	..@j12491
..@j12491:
		mov	word [bp-2],0
..@j12479:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_PCHAR_LENGTH
