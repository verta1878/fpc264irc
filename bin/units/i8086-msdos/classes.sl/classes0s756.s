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
	GLOBAL CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEWSTRING$WIDESTRING
CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEWSTRING$WIDESTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j17223
		mov	bx,word [bx-2]
..@j17223:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEDWORD$LONGWORD
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		ja	..@j17228
		jb	..@j17229
		cmp	ax,0
		ja	..@j17228
		jmp	..@j17229
..@j17228:
		mov	bx,word [bp+6]
		push	word [bx+4]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		shl	ax,1
		rcl	dx,1
		push	dx
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
..@j17229:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEDWORD$LONGWORD
