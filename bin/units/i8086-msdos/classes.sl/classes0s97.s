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
	GLOBAL CLASSES$_$TSTRINGSTREAM_$__$$_READ$formal$LONGINT$$LONGINT
CLASSES$_$TSTRINGSTREAM_$__$$_READ$formal$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		test	bx,bx
		je	..@j2116
		mov	bx,word [bx-2]
..@j2116:
		mov	si,word [bp+10]
		mov	dx,word [si+4]
		mov	ax,bx
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jg	..@j2117
		jl	..@j2118
		cmp	dx,word [bp+4]
		ja	..@j2117
		jmp	..@j2118
		jmp	..@j2118
..@j2117:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j2118:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jg	..@j2121
		jl	..@j2122
		cmp	dx,0
		ja	..@j2121
		jmp	..@j2122
..@j2121:
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		test	bx,bx
		jne	..@j2125
		mov	bx,word FPC_EMPTYCHAR
..@j2125:
		mov	si,word [bp+10]
		mov	si,word [si+4]
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+10]
		mov	ax,word [bx+4]
		cwd
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		add	cx,ax
		adc	bx,dx
		mov	bx,word [bp+10]
		mov	word [bx+4],cx
..@j2122:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FPC_EMPTYCHAR
