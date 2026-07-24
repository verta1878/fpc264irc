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
	GLOBAL CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITELSTRING$ANSISTRING
CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITELSTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j17240
		mov	bx,word [bx-2]
..@j17240:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEDWORD$LONGWORD
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j17243
		mov	bx,word [bx-2]
..@j17243:
		cmp	bx,0
		jg	..@j17241
		jmp	..@j17242
..@j17241:
		mov	bx,word [bp+6]
		push	word [bx+4]
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j17250
		mov	bx,word [bx-2]
..@j17250:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
..@j17242:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEDWORD$LONGWORD
