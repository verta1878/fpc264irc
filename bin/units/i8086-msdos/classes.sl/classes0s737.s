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
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READINT$$INT64
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READINT$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+10]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		mov	dx,0
		mov	ah,0
		push	dx
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READINT$TVALUETYPE$$INT64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READINT$TVALUETYPE$$INT64
EXTERN	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
