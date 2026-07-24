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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$__RELEASE$$LONGINT
CLASSES$_$TCOMPONENT_$__$$__RELEASE$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j12924
		jmp	..@j12925
..@j12924:
		mov	bx,word [bp+4]
		push	word [bx+20]
		mov	bx,word [bp+4]
		mov	bx,word [bx+20]
		mov	bx,word [bx]
		call	[bx+4]
		pop	word [bp-6]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j12930
..@j12925:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
..@j12930:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
