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
	GLOBAL VIDEO_$$_CLEARSCREEN
VIDEO_$$_CLEARSCREEN:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	byte [bp-19],6
		mov	byte [bp-20],0
		mov	byte [bp-17],7
		mov	word [bp-16],0
		mov	ax,word [U_$VIDEO_$$_SCREENHEIGHT]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	byte [bp-13],al
		mov	ax,word [U_$VIDEO_$$_SCREENWIDTH]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	byte [bp-14],al
		mov	ax,16
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INTR
EXTERN	U_$VIDEO_$$_SCREENWIDTH
EXTERN	U_$VIDEO_$$_SCREENHEIGHT
