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
	GLOBAL CLASSES$_$TDATAMODULE_$__$$_DEFINEPROPERTIES$TFILER
CLASSES$_$TDATAMODULE_$__$$_DEFINEPROPERTIES$TFILER:
		push	bp
		mov	bp,sp
		sub	sp,12
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TCOMPONENT_$__$$_DEFINEPROPERTIES$TFILER
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j13538
		jmp	..@j13544
..@j13544:
		mov	si,word [bp+6]
		mov	bx,word [bp-2]
		mov	dx,word [si+36]
		mov	ax,word [si+38]
		cmp	ax,word [bx+38]
		jne	..@j13538
		cmp	dx,word [bx+36]
		jne	..@j13538
		jmp	..@j13543
		jmp	..@j13543
..@j13543:
		mov	si,word [bp+6]
		mov	bx,word [bp-2]
		mov	dx,word [si+40]
		mov	ax,word [si+42]
		cmp	ax,word [bx+42]
		jne	..@j13538
		cmp	dx,word [bx+40]
		jne	..@j13538
		jmp	..@j13542
		jmp	..@j13542
..@j13542:
		mov	si,word [bp+6]
		mov	bx,word [bp-2]
		mov	dx,word [si+32]
		mov	ax,word [si+34]
		cmp	ax,word [bx+34]
		jne	..@j13538
		cmp	dx,word [bx+32]
		jne	..@j13538
		jmp	..@j13541
		jmp	..@j13541
..@j13541:
		mov	si,word [bp+6]
		mov	bx,word [bp-2]
		mov	dx,word [si+28]
		mov	ax,word [si+30]
		cmp	ax,word [bx+30]
		jne	..@j13538
		cmp	dx,word [bx+28]
		jne	..@j13538
		jmp	..@j13540
		jmp	..@j13540
..@j13540:
		mov	bx,word [bp+6]
		mov	si,word [bp-2]
		mov	ax,word [bx+44]
		cmp	ax,word [si+44]
		jne	..@j13538
		jmp	..@j13539
..@j13538:
		mov	byte [bp-3],1
		jmp	..@j13545
..@j13539:
		mov	byte [bp-3],0
..@j13545:
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld28
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word CLASSES$_$TDATAMODULE_$__$$_READH$TREADER
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		lea	ax,[bp-8]
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word CLASSES$_$TDATAMODULE_$__$$_WRITEH$TWRITER
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		lea	ax,[bp-12]
		push	ax
		mov	al,byte [bp-3]
		mov	ah,0
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld29
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word CLASSES$_$TDATAMODULE_$__$$_READL$TREADER
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		lea	ax,[bp-8]
		push	ax
		mov	ax,word [bp+6]
		mov	dx,word CLASSES$_$TDATAMODULE_$__$$_WRITEL$TWRITER
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		lea	ax,[bp-12]
		push	ax
		mov	al,byte [bp-3]
		mov	ah,0
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld30
		push	ax
		mov	ax,word [bp+6]
		mov	dx,word CLASSES$_$TDATAMODULE_$__$$_READT$TREADER
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		lea	ax,[bp-8]
		push	ax
		mov	ax,word [bp+6]
		mov	dx,word CLASSES$_$TDATAMODULE_$__$$_WRITET$TWRITER
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		lea	ax,[bp-12]
		push	ax
		mov	al,byte [bp-3]
		mov	ah,0
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld31
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word CLASSES$_$TDATAMODULE_$__$$_READW$TREADER
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		lea	ax,[bp-8]
		push	ax
		mov	ax,word [bp+6]
		mov	dx,word CLASSES$_$TDATAMODULE_$__$$_WRITEW$TWRITER
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		lea	ax,[bp-12]
		push	ax
		mov	al,byte [bp-3]
		mov	ah,0
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld32
		push	ax
		mov	ax,word [bp+6]
		mov	dx,word CLASSES$_$TDATAMODULE_$__$$_READP$TREADER
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		lea	ax,[bp-8]
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word CLASSES$_$TDATAMODULE_$__$$_WRITEP$TWRITER
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		lea	ax,[bp-12]
		push	ax
		mov	al,byte [bp-3]
		mov	ah,0
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TDATAMODULE_$__$$_WRITEP$TWRITER
EXTERN	CLASSES$_$TDATAMODULE_$__$$_READP$TREADER
EXTERN	_$CLASSES$_Ld32
EXTERN	CLASSES$_$TDATAMODULE_$__$$_WRITEW$TWRITER
EXTERN	CLASSES$_$TDATAMODULE_$__$$_READW$TREADER
EXTERN	_$CLASSES$_Ld31
EXTERN	CLASSES$_$TDATAMODULE_$__$$_WRITET$TWRITER
EXTERN	CLASSES$_$TDATAMODULE_$__$$_READT$TREADER
EXTERN	_$CLASSES$_Ld30
EXTERN	CLASSES$_$TDATAMODULE_$__$$_WRITEL$TWRITER
EXTERN	CLASSES$_$TDATAMODULE_$__$$_READL$TREADER
EXTERN	_$CLASSES$_Ld29
EXTERN	CLASSES$_$TDATAMODULE_$__$$_WRITEH$TWRITER
EXTERN	CLASSES$_$TDATAMODULE_$__$$_READH$TREADER
EXTERN	_$CLASSES$_Ld28
EXTERN	CLASSES$_$TCOMPONENT_$__$$_DEFINEPROPERTIES$TFILER
