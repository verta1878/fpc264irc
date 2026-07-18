BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL DATEUTILS_$$_ISVALIDDATEMONTHWEEK$WORD$WORD$WORD$WORD$$BOOLEAN
DATEUTILS_$$_ISVALIDDATEMONTHWEEK$WORD$WORD$WORD$WORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+10],0
		jne	..@j125
		jmp	..@j121
..@j125:
		cmp	word [bp+10],10000
		jb	..@j124
		jmp	..@j121
..@j124:
		mov	ax,word [bp+8]
		dec	ax
		cmp	ax,12
		jb	..@j126
..@j126:
		jc	..@j123
		jmp	..@j121
..@j123:
		mov	ax,word [bp+6]
		dec	ax
		cmp	ax,5
		jb	..@j127
..@j127:
		jc	..@j122
		jmp	..@j121
..@j122:
		mov	ax,word [bp+4]
		dec	ax
		cmp	ax,7
		jb	..@j128
..@j128:
		jc	..@j120
		jmp	..@j121
..@j120:
		mov	byte [bp-1],1
		jmp	..@j129
..@j121:
		mov	byte [bp-1],0
..@j129:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
