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
	GLOBAL CLASSES$_$THANDLESTREAM_$__$$_READ$formal$LONGINT$$LONGINT
CLASSES$_$THANDLESTREAM_$__$$_READ$formal$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+10]
		push	word [bx+2]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	SYSUTILS_$$_FILEREAD$WORD$formal$LONGINT$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,-1
		jne	..@j1522
		cmp	ax,-1
		jne	..@j1522
		jmp	..@j1521
..@j1521:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j1522:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSUTILS_$$_FILEREAD$WORD$formal$LONGINT$$LONGINT
