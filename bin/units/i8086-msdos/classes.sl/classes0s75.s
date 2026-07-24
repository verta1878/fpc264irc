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
	GLOBAL CLASSES$_$TFILESTREAM_$__$$_DESTROY
CLASSES$_$TFILESTREAM_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j1693
		jmp	..@j1694
..@j1693:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j1694:
		mov	bx,word [bp+6]
		push	word [bx+2]
		call	SYSUTILS_$$_FILECLOSE$WORD
		cmp	word [bp+6],0
		jne	..@j1701
		jmp	..@j1700
..@j1701:
		cmp	word [bp+4],0
		jne	..@j1699
		jmp	..@j1700
..@j1699:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j1700:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_FILECLOSE$WORD
