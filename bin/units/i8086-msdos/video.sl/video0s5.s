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
	GLOBAL VIDEO_$$_SETCURSORPOS$WORD$WORD
VIDEO_$$_SETCURSORPOS$WORD$WORD:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	byte [bp-19],2
		mov	byte [bp-17],0
		mov	al,byte [bp+4]
		mov	byte [bp-13],al
		mov	al,byte [bp+6]
		mov	byte [bp-14],al
		mov	ax,16
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_INTR
