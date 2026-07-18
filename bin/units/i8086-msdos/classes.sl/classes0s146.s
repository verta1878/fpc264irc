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
	GLOBAL CLASSES$_$TPARSER_$__$$_HANDLEDECIMALCHARACTER$BOOLEAN$WIDECHAR$CHAR
CLASSES$_$TPARSER_$__$$_HANDLEDECIMALCHARACTER$BOOLEAN$WIDECHAR$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+10]
		inc	word [bx+8]
		push	word [bp+10]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
		mov	word [bp-2],0
		jmp	..@j3283
	ALIGN 2
..@j3282:
		mov	ax,10
		mul	word [bp-2]
		mov	bx,word [bp+10]
		mov	bx,word [bx+4]
		mov	si,word [bp+10]
		mov	si,word [si+8]
		mov	dl,byte [bx+si]
		mov	dh,0
		add	dx,ax
		sub	dx,48
		mov	word [bp-2],dx
		mov	bx,word [bp+10]
		inc	word [bx+8]
		push	word [bp+10]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
..@j3283:
		push	word [bp+10]
		call	CLASSES$_$TPARSER_$__$$_ISNUMBER$$BOOLEAN
		test	al,al
		jne	..@j3289
		jmp	..@j3284
..@j3289:
		jmp	..@j3282
..@j3284:
		cmp	word [bp-2],127
		jg	..@j3292
		jmp	..@j3293
..@j3292:
		mov	bx,word [bp+8]
		mov	byte [bx],0
..@j3293:
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		cmp	word [bp-2],256
		jl	..@j3298
		jmp	..@j3299
..@j3298:
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bx],al
		jmp	..@j3302
..@j3299:
		mov	bx,word [bp+4]
		mov	byte [bx],0
..@j3302:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$TPARSER_$__$$_ISNUMBER$$BOOLEAN
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
