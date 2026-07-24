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
	GLOBAL MATH_$$_RANDOMRANGE$SMALLINT$SMALLINT$$SMALLINT
MATH_$$_RANDOMRANGE$SMALLINT$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+6]
		mov	dx,word [bp+4]
		sub	ax,dx
		cwd
		mov	bx,ax
		mov	ax,dx
		mov	di,bx
		mov	si,ax
		mov	cl,15
		sar	si,cl
		mov	di,si
		mov	cx,di
		mov	dx,si
		xor	cx,bx
		xor	dx,ax
		sub	cx,di
		sbb	dx,si
		push	dx
		push	cx
		call	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-6],dx
		push	word [bp+4]
		push	word [bp+6]
		call	MATH_$$_MIN$SMALLINT$SMALLINT$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		add	cx,word [bp-4]
		adc	ax,word [bp-6]
		mov	word [bp-2],cx
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	MATH_$$_MIN$SMALLINT$SMALLINT$$SMALLINT
EXTERN	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
