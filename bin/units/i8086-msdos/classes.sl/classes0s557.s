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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_NOTIFICATION$TCOMPONENT$TOPERATION
CLASSES$_$TCOMPONENT_$__$$_NOTIFICATION$TCOMPONENT$TOPERATION:
		push	bp
		mov	bp,sp
		sub	sp,6
		cmp	word [bp+4],1
		je	..@j12309
		jmp	..@j12310
..@j12309:
		push	word [bp+10]
		push	word [bp+8]
		call	CLASSES$_$TCOMPONENT_$__$$_REMOVEFREENOTIFICATION$TCOMPONENT
..@j12310:
		mov	bx,word [bp+10]
		cmp	word [bx+12],0
		je	..@j12315
		jmp	..@j12316
..@j12315:
		jmp	..@j12307
..@j12316:
		mov	bx,word [bp+10]
		mov	bx,word [bx+12]
		mov	ax,word [bx+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j12320
	ALIGN 2
..@j12319:
		mov	bx,word [bp+10]
		push	word [bx+12]
		push	word [bp-4]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-6],ax
		push	word [bp-6]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp-6]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		sub	word [bp-4],1
		sbb	word [bp-2],0
		mov	bx,word [bp+10]
		mov	bx,word [bx+12]
		mov	ax,word [bx+4]
		cwd
		cmp	dx,word [bp-2]
		jl	..@j12334
		jg	..@j12335
		cmp	ax,word [bp-4]
		jbe	..@j12334
		jmp	..@j12335
		jmp	..@j12335
..@j12334:
		mov	bx,word [bp+10]
		mov	bx,word [bx+12]
		mov	ax,word [bx+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
..@j12335:
..@j12320:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j12319
		jl	..@j12321
		cmp	ax,0
		jae	..@j12319
		jmp	..@j12321
..@j12321:
..@j12307:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TCOMPONENT_$__$$_REMOVEFREENOTIFICATION$TCOMPONENT
