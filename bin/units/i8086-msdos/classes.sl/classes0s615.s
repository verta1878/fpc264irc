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
	GLOBAL CLASSES$_$TBASICACTION_$__$$_SETONEXECUTE$TNOTIFYEVENT
CLASSES$_$TBASICACTION_$__$$_SETONEXECUTE$TNOTIFYEVENT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+34]
		cmp	ax,word [bp-6]
		jne	..@j13233
		jmp	..@j13235
..@j13235:
		mov	bx,word [bp+6]
		mov	ax,word [bx+36]
		cmp	ax,word [bp-4]
		jne	..@j13233
		jmp	..@j13234
..@j13233:
		mov	bx,word [bp+6]
		mov	bx,word [bx+42]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-10],ax
		mov	word [bp-2],0
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jl	..@j13239
		dec	word [bp-2]
	ALIGN 2
..@j13240:
		inc	word [bp-2]
		mov	bx,word [bp+6]
		push	word [bx+42]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-8],ax
		push	word [bp-8]
		lea	ax,[bp-6]
		push	ax
		mov	bx,word [bp-8]
		mov	bx,word [bx]
		mov	ax,word [bx+58]
		call	ax
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jg	..@j13240
..@j13239:
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		mov	word [bx+34],ax
		mov	ax,word [bp-4]
		mov	word [bx+36],ax
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+108]
		call	ax
..@j13234:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
