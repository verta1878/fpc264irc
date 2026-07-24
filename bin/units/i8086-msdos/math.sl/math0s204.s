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
	GLOBAL MATH_$$_RANDOMFROM$array_of_SMALLINT$$SMALLINT
MATH_$$_RANDOMFROM$array_of_SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	ax,word [bp+4]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
		mov	si,ax
		shl	si,1
		mov	bx,word [bp-4]
		mov	ax,word [bx+si]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
