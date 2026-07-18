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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITE$formal$LONGINT
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITE$formal$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		jmp	..@j21698
	ALIGN 2
..@j21697:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx+6]
		mov	dx,word [si+8]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-2]
		jl	..@j21702
		jg	..@j21703
		cmp	cx,word [bp-4]
		jb	..@j21702
		jmp	..@j21703
		jmp	..@j21703
..@j21702:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx+6]
		mov	dx,word [si+8]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
..@j21703:
		mov	ax,word [bp-6]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+4]
		mov	si,word [bp+10]
		mov	si,word [si+8]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	word [bp+4],ax
		sbb	word [bp+6],dx
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		add	word [bx+8],ax
		mov	ax,word [bp-4]
		add	word [bp-6],ax
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx+8]
		cmp	ax,word [si+6]
		je	..@j21712
		jmp	..@j21713
..@j21712:
		push	word [bp+10]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_FLUSHBUFFER
..@j21713:
..@j21698:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jg	..@j21697
		jl	..@j21699
		cmp	dx,0
		ja	..@j21697
		jmp	..@j21699
..@j21699:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_FLUSHBUFFER
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
