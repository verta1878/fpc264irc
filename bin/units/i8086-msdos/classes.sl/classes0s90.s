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
	GLOBAL CLASSES$_$TMEMORYSTREAM_$__$$_WRITE$formal$LONGINT$$LONGINT
CLASSES$_$TMEMORYSTREAM_$__$$_WRITE$formal$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j1927
		cmp	ax,0
		jne	..@j1927
		jmp	..@j1925
..@j1927:
		mov	bx,word [bp+10]
		cmp	word [bx+6],0
		jl	..@j1925
		jmp	..@j1926
..@j1925:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j1923
..@j1926:
		mov	bx,word [bp+10]
		mov	ax,word [bx+6]
		cwd
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		add	cx,ax
		adc	bx,dx
		mov	word [bp-6],cx
		mov	bx,word [bp+10]
		mov	ax,word [bx+4]
		cmp	ax,word [bp-6]
		jl	..@j1932
		jmp	..@j1933
..@j1932:
		mov	bx,word [bp+10]
		mov	ax,word [bx+8]
		cmp	ax,word [bp-6]
		jl	..@j1934
		jmp	..@j1935
..@j1934:
		push	word [bp+10]
		push	word [bp-6]
		call	CLASSES$_$TMEMORYSTREAM_$__$$_SETCAPACITY$SMALLINT
..@j1935:
		mov	bx,word [bp+10]
		mov	ax,word [bp-6]
		mov	word [bx+4],ax
..@j1933:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	dx,word [bx+2]
		mov	ax,word [si+6]
		add	ax,dx
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+10]
		mov	ax,word [bp-6]
		mov	word [bx+6],ax
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j1923:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	CLASSES$_$TMEMORYSTREAM_$__$$_SETCAPACITY$SMALLINT
