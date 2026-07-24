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
	GLOBAL CLASSES$_$TREADER_$__$$_READSET$POINTER$$SMALLINT
CLASSES$_$TREADER_$__$$_READSET$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		cmp	ax,11
		je	..@j19527
		jmp	..@j19528
..@j19527:
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	bx,word [bp+6]
		push	word [bx+9]
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
		mov	word [bp-2],ax
		jmp	..@j19539
..@j19528:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
		mov	word [bp-2],ax
..@j19539:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
