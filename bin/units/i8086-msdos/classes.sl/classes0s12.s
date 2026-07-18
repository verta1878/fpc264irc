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
	GLOBAL CLASSES$_$TBITS_$__$$_DESTROY
CLASSES$_$TBITS_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j275
		jmp	..@j276
..@j275:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j276:
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		jne	..@j279
		jmp	..@j280
..@j279:
		mov	bx,word [bp+6]
		push	word [bx+2]
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j280:
		mov	bx,word [bp+6]
		mov	word [bx+2],0
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j293
		jmp	..@j292
..@j293:
		cmp	word [bp+4],0
		jne	..@j291
		jmp	..@j292
..@j291:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j292:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
