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
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READUSTR$$UNICODESTRING
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READUSTR$$UNICODESTRING:
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
		call	fpc_unicodestr_setlength
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		ja	..@j16237
		jb	..@j16238
		cmp	ax,0
		ja	..@j16237
		jmp	..@j16238
..@j16237:
		mov	bx,word [bp+6]
		push	word [bx+10]
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		shl	ax,1
		rcl	dx,1
		push	dx
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
..@j16238:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
EXTERN	fpc_unicodestr_setlength
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READDWORD$$LONGWORD
