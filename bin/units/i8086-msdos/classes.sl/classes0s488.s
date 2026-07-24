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
	GLOBAL CLASSES$_$TINTERFACEDPERSISTENT_$__$$__ADDREF$$LONGINT
CLASSES$_$TINTERFACEDPERSISTENT_$__$$__ADDREF$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		cmp	word [bx+6],0
		jne	..@j10992
		jmp	..@j10993
..@j10992:
		mov	bx,word [bp+4]
		push	word [bx+6]
		mov	bx,word [bp+4]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		call	[bx+2]
		pop	word [bp-6]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j10998
..@j10993:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
..@j10998:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
