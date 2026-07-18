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
	GLOBAL CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEQWORD$QWORD
CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEQWORD$QWORD:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		mov	word [bp+8],cx
		mov	word [bp+10],bx
		mov	bx,word [bp+12]
		push	word [bx+4]
		lea	ax,[bp+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,8
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
