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
	GLOBAL MATH_$$_ISNAN$SINGLE$$BOOLEAN
MATH_$$_ISNAN$SINGLE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		and	dx,32767
		cmp	dx,32640
		ja	..@j2014
		jb	..@j2015
		cmp	ax,0
		ja	..@j2014
		jmp	..@j2015
..@j2014:
		mov	byte [bp-1],1
		jmp	..@j2016
..@j2015:
		mov	byte [bp-1],0
..@j2016:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
