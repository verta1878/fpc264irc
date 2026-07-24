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
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READQWORD$$QWORD
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READQWORD$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+4]
		push	word [bx+10]
		lea	ax,[bp-8]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,8
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
		lea	di,[bp-16]
		push	ss
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
