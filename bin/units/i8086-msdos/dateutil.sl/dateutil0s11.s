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
	GLOBAL DATEUTILS_$$_ISVALIDDATEWEEK$WORD$WORD$WORD$$BOOLEAN
DATEUTILS_$$_ISVALIDDATEWEEK$WORD$WORD$WORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+8],0
		jne	..@j113
		jmp	..@j109
..@j113:
		cmp	word [bp+8],10000
		jb	..@j112
		jmp	..@j109
..@j112:
		mov	ax,word [bp+4]
		dec	ax
		cmp	ax,7
		jb	..@j114
..@j114:
		jc	..@j111
		jmp	..@j109
..@j111:
		cmp	word [bp+6],0
		jne	..@j110
		jmp	..@j109
..@j110:
		push	word [bp+8]
		call	DATEUTILS_$$_WEEKSINAYEAR$WORD$$WORD
		cmp	ax,word [bp+6]
		jae	..@j108
		jmp	..@j109
..@j108:
		mov	byte [bp-1],1
		jmp	..@j117
..@j109:
		mov	byte [bp-1],0
..@j117:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	DATEUTILS_$$_WEEKSINAYEAR$WORD$$WORD
