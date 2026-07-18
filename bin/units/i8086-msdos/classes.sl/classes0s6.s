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
	GLOBAL CLASSES_$$_LIMIN$LONGINT$LONGINT$$LONGINT
CLASSES_$$_LIMIN$LONGINT$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		mov	ax,word [bp+10]
		mov	word [bp-2],ax
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,word [bp+6]
		jg	..@j105
		jl	..@j106
		cmp	ax,word [bp+4]
		ja	..@j105
		jmp	..@j106
		jmp	..@j106
..@j105:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j106:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
