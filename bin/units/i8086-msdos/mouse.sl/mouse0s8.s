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
	GLOBAL MOUSE_$$_GETMOUSEBUTTONS$$WORD
MOUSE_$$_GETMOUSEBUTTONS$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,22
		cmp	byte [U_$MOUSE_$$_MOUSEPRESENT],0
		jne	..@j72
		jmp	..@j73
..@j72:
		mov	word [bp-22],3
		mov	ax,51
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-20]
		mov	word [bp-2],ax
		jmp	..@j82
..@j73:
		mov	word [bp-2],0
..@j82:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INTR
EXTERN	U_$MOUSE_$$_MOUSEPRESENT
