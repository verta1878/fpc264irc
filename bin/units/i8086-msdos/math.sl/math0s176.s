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
	GLOBAL MATH_$$_ISNAN$EXTENDED$$BOOLEAN
MATH_$$_ISNAN$EXTENDED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+12]
		and	ax,32767
		cmp	ax,32767
		mov	al,0
		jne	..@j2034
		inc	ax
..@j2034:
		mov	byte [bp-3],al
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j2036
		cmp	ax,0
		jne	..@j2036
		jmp	..@j2037
..@j2037:
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		and	dx,32767
		cmp	dx,0
		jne	..@j2036
		cmp	ax,0
		jne	..@j2036
		jmp	..@j2035
..@j2035:
		mov	byte [bp-2],1
		jmp	..@j2038
..@j2036:
		mov	byte [bp-2],0
..@j2038:
		cmp	byte [bp-3],0
		jne	..@j2041
		jmp	..@j2040
..@j2041:
		cmp	byte [bp-2],0
		je	..@j2039
		jmp	..@j2040
..@j2039:
		mov	byte [bp-1],1
		jmp	..@j2042
..@j2040:
		mov	byte [bp-1],0
..@j2042:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
