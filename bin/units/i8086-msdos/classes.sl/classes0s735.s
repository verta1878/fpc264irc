BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READSSTR$$ANSISTRING
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READSSTR$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		push	word [bx+10]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		mov	byte [bp-1],al
		mov	ax,word [bp+4]
		push	ax
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		cmp	byte [bp-1],0
		ja	..@j16291
		jmp	..@j16292
..@j16291:
		mov	bx,word [bp+6]
		push	word [bx+10]
		mov	ax,word [bp+4]
		push	ax
		call	fpc_ansistr_unique
		push	ax
		mov	ax,0
		mov	dl,byte [bp-1]
		mov	dh,0
		push	ax
		push	dx
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
..@j16292:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
