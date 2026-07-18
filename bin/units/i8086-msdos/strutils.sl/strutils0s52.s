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
	GLOBAL STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_GETINTEGER$PCHAR$SMALLINT$$DOUBLE
STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_GETINTEGER$PCHAR$SMALLINT$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,12
		wait fldz
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1603
	ALIGN 2
..@j1602:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		wait fild	dword [bp-12]
		wait fld	qword [bp-8]
		wait fmul	qword [_$STRUTILS$_Ld2]
		wait faddp	st1,st0
		wait fsub	qword [_$STRUTILS$_Ld3]
		wait fstp	qword [bp-8]
		DB	09bh
		mov	bx,word [bp+4]
		inc	word [bx]
		mov	bx,word [bp+6]
		inc	word [bx]
..@j1603:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		cmp	byte [bx],0
		jne	..@j1607
		jmp	..@j1604
..@j1607:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_ISNUMBER$CHAR$$BOOLEAN
		test	al,al
		jne	..@j1602
		jmp	..@j1604
..@j1604:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_ISNUMBER$CHAR$$BOOLEAN
EXTERN	_$STRUTILS$_Ld3
EXTERN	_$STRUTILS$_Ld2
