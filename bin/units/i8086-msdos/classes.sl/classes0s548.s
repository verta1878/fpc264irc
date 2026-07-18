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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_DEFINEPROPERTIES$TFILER
CLASSES$_$TCOMPONENT_$__$$_DEFINEPROPERTIES$TFILER:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j12247
		jmp	..@j12248
..@j12247:
		mov	bx,word [bp-2]
		mov	ax,word [bx+16]
		mov	word [bp-6],ax
		mov	ax,word [bx+18]
		mov	word [bp-4],ax
..@j12248:
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld26
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word CLASSES$_$TCOMPONENT_$__$$_READLEFT$TREADER
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		lea	ax,[bp-10]
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word CLASSES$_$TCOMPONENT_$__$$_WRITELEFT$TWRITER
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		lea	ax,[bp-14]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+16]
		cmp	ax,word [bp-6]
		mov	al,0
		je	..@j12261
		inc	ax
..@j12261:
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld27
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word CLASSES$_$TCOMPONENT_$__$$_READTOP$TREADER
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		lea	ax,[bp-10]
		push	ax
		mov	ax,word [bp+6]
		mov	dx,word CLASSES$_$TCOMPONENT_$__$$_WRITETOP$TWRITER
		mov	word [bp-14],dx
		mov	word [bp-12],ax
		lea	ax,[bp-14]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+18]
		cmp	ax,word [bp-4]
		mov	al,0
		je	..@j12272
		inc	ax
..@j12272:
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TCOMPONENT_$__$$_WRITETOP$TWRITER
EXTERN	CLASSES$_$TCOMPONENT_$__$$_READTOP$TREADER
EXTERN	_$CLASSES$_Ld27
EXTERN	CLASSES$_$TCOMPONENT_$__$$_WRITELEFT$TWRITER
EXTERN	CLASSES$_$TCOMPONENT_$__$$_READLEFT$TREADER
EXTERN	_$CLASSES$_Ld26
