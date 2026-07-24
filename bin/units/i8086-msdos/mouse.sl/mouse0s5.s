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
	GLOBAL MOUSE_$$_SHOWMOUSE
MOUSE_$$_SHOWMOUSE:
		push	bp
		mov	bp,sp
		sub	sp,20
		cmp	byte [U_$MOUSE_$$_MOUSEPRESENT],0
		jne	..@j33
		jmp	..@j34
..@j33:
		mov	word [bp-20],1
		mov	ax,51
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
..@j34:
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INTR
EXTERN	U_$MOUSE_$$_MOUSEPRESENT
