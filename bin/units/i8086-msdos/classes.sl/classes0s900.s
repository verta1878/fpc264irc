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
	GLOBAL CLASSES$_$TWRITER_$__$$_DETERMINEANCESTOR$TCOMPONENT
CLASSES$_$TWRITER_$__$$_DETERMINEANCESTOR$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		cmp	word [bx+16],0
		je	..@j22087
		jmp	..@j22088
..@j22087:
		jmp	..@j22085
..@j22088:
		mov	bx,word [bp+6]
		push	word [bx+16]
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	bx,word [bp+6]
		mov	bx,word [bx+16]
		mov	bx,word [bx]
		mov	ax,word [bx+100]
		call	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],-1
		je	..@j22095
		jmp	..@j22096
..@j22095:
		mov	bx,word [bp+6]
		mov	word [bx+6],0
		mov	bx,word [bp+6]
		mov	word [bx+18],-1
		jmp	..@j22101
..@j22096:
		mov	bx,word [bp+6]
		push	word [bx+16]
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx+16]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		mov	bx,ax
		mov	si,word [bp+6]
		mov	dx,word [bx+4]
		mov	word [si+6],dx
		mov	si,word [bp+6]
		mov	dx,word [bx+2]
		mov	word [si+18],dx
..@j22101:
..@j22085:
		mov	sp,bp
		pop	bp
		ret	4
