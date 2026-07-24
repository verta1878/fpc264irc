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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITEINTEGER$LONGINT
CLASSES$_$TWRITER_$__$$_WRITEINTEGER$LONGINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	dx,word [bp+4]
		mov	si,word [bp+6]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		push	bx
		push	ax
		push	si
		push	dx
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+80]
		call	ax
		mov	sp,bp
		pop	bp
		ret	6
