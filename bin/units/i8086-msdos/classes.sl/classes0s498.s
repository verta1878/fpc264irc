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
	GLOBAL CLASSES$_$TLINKEDLIST_$__$$_CLEAR
CLASSES$_$TLINKEDLIST_$__$$_CLEAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
		jmp	..@j11170
	ALIGN 2
..@j11169:
		mov	bx,word [bp+4]
		mov	ax,word [bp-2]
		mov	word [bx+4],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		lea	ax,[bx+4]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
..@j11170:
		cmp	word [bp-2],0
		jne	..@j11169
		jmp	..@j11171
..@j11171:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
