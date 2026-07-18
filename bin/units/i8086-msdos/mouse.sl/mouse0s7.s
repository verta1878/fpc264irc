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
	GLOBAL MOUSE_$$_GETMOUSEXY$WORD$WORD
MOUSE_$$_GETMOUSEXY$WORD$WORD:
		push	bp
		mov	bp,sp
		sub	sp,20
		cmp	byte [U_$MOUSE_$$_MOUSEPRESENT],0
		jne	..@j53
		jmp	..@j54
..@j53:
		mov	word [bp-20],3
		mov	ax,51
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-16]
		mov	cl,3
		shr	ax,cl
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	ax,word [bp-14]
		mov	cl,3
		shr	ax,cl
		mov	bx,word [bp+4]
		mov	word [bx],ax
		jmp	..@j65
..@j54:
		mov	bx,word [bp+6]
		mov	word [bx],0
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j65:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_INTR
EXTERN	U_$MOUSE_$$_MOUSEPRESENT
