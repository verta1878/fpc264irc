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
	GLOBAL MATH_$$_DIVMOD$LONGWORD$LONGWORD$LONGWORD$LONGWORD
MATH_$$_DIVMOD$LONGWORD$LONGWORD$LONGWORD$LONGWORD:
		push	bp
		mov	bp,sp
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+14]
		push	word [bp+12]
		call	fpc_div_dword
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+6]
		push	word [bx+2]
		push	word [bx]
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	fpc_mul_dword
		mov	cx,word [bp+12]
		mov	bx,word [bp+14]
		sub	cx,ax
		sbb	bx,dx
		mov	si,word [bp+4]
		mov	word [si],cx
		mov	word [si+2],bx
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	fpc_mul_dword
EXTERN	fpc_div_dword
