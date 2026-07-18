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
	GLOBAL CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		jmp	..@j5004
	ALIGN 2
..@j5003:
		inc	word [bp-2]
..@j5004:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jl	..@j5006
		jmp	..@j5005
..@j5006:
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		cmp	ax,word [bp+4]
		jne	..@j5003
		jmp	..@j5005
..@j5005:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jge	..@j5007
		jmp	..@j5008
..@j5007:
		mov	word [bp-2],-1
..@j5008:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
