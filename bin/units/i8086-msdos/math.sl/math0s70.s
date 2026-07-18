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
	GLOBAL MATH_$$_SUMINT$array_of_INT64$$INT64
MATH_$$_SUMINT$array_of_INT64$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	MATH_$$_SUMINT$PINT64$LONGINT$$INT64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	MATH_$$_SUMINT$PINT64$LONGINT$$INT64
