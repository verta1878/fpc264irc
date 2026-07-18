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
	GLOBAL MOUSE_$$_INITMOUSE
MOUSE_$$_INITMOUSE:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-20],0
		mov	ax,51
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		cmp	word [bp-20],-1
		mov	al,0
		jne	..@j13
		inc	ax
..@j13:
		mov	byte [U_$MOUSE_$$_MOUSEPRESENT],al
		mov	word [U_$MOUSE_$$_LASTBUTTONS],0
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$MOUSE_$$_LASTBUTTONS
EXTERN	U_$MOUSE_$$_MOUSEPRESENT
EXTERN	FPC_INTR
