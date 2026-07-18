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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT
CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,1026
		jmp	..@j18277
	ALIGN 2
..@j18276:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jg	..@j18279
		jl	..@j18280
		cmp	dx,1024
		ja	..@j18279
		jmp	..@j18280
..@j18279:
		mov	word [bp-1026],1024
		jmp	..@j18283
..@j18280:
		mov	ax,word [bp+4]
		mov	word [bp-1026],ax
..@j18283:
		mov	bx,word [bp+8]
		push	word [bx+4]
		lea	ax,[bp-1024]
		push	ax
		mov	ax,word [bp-1026]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+4]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	ax,word [bp-1026]
		cwd
		sub	word [bp+4],ax
		sbb	word [bp+6],dx
..@j18277:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jg	..@j18276
		jl	..@j18278
		cmp	ax,0
		ja	..@j18276
		jmp	..@j18278
..@j18278:
		mov	sp,bp
		pop	bp
		ret	6
