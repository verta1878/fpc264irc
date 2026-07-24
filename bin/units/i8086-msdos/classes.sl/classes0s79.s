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
	GLOBAL CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_READ$formal$LONGINT$$LONGINT
CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_READ$formal$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	bx,word [bp+10]
		cmp	word [bx+4],0
		jg	..@j1725
		jmp	..@j1723
..@j1725:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx+6]
		cmp	ax,word [si+4]
		jl	..@j1724
		jmp	..@j1723
..@j1724:
		mov	bx,word [bp+10]
		cmp	word [bx+6],0
		jge	..@j1722
		jmp	..@j1723
..@j1722:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx+4]
		mov	dx,word [si+6]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-2]
		jl	..@j1728
		jg	..@j1729
		cmp	cx,word [bp-4]
		jb	..@j1728
		jmp	..@j1729
		jmp	..@j1729
..@j1728:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx+4]
		mov	dx,word [si+6]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
..@j1729:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	dx,word [bx+2]
		mov	ax,word [si+6]
		add	ax,dx
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+10]
		mov	ax,word [bx+6]
		cwd
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		add	cx,ax
		adc	bx,dx
		mov	bx,word [bp+10]
		mov	word [bx+6],cx
..@j1723:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
