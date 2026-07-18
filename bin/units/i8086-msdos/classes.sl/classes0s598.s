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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_INVOKE$crcCF4E1178
CLASSES$_$TCOMPONENT_$__$$_INVOKE$crcCF4E1178:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j12990
		jmp	..@j12991
..@j12990:
		push	word [bp+20]
		push	word [bp+18]
		push	word [bp+16]
		mov	ax,word [bp+14]
		push	ax
		push	word [bp+12]
		push	word [bp+10]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+4]
		push	word [bx+20]
		mov	bx,word [bp+4]
		mov	bx,word [bx+20]
		mov	bx,word [bx]
		call	[bx+12]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j13012
..@j12991:
		mov	word [bp-4],16385
		mov	word [bp-2],-32768
..@j13012:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	18
