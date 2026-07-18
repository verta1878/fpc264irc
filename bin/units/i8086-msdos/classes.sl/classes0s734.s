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
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READLSTR$$ANSISTRING
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READLSTR$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+6]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READDWORD$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-4]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		ja	..@j16271
		jb	..@j16272
		cmp	ax,0
		ja	..@j16271
		jmp	..@j16272
..@j16271:
		mov	bx,word [bp+6]
		push	word [bx+10]
		mov	ax,word [bp+4]
		push	ax
		call	fpc_ansistr_unique
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
..@j16272:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READDWORD$$LONGWORD
