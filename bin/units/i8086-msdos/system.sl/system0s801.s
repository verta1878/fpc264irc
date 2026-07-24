BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL SYSTEM_$$_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
SYSTEM_$$_ARRAYRTTI$POINTER$POINTER$TRTTIPROC:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	ax,word [bp+6]
		add	ax,2
		mov	bx,word [bp+6]
		mov	dl,byte [bx+1]
		mov	dh,0
		add	dx,ax
		mov	word [bp-10],dx
		mov	ax,word [bp-10]
		mov	word [bp+6],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j17122
		jmp	..@j17123
..@j17122:
		jmp	..@j17112
..@j17123:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		cwd
		idiv	word [bp-4]
		mov	word [bp-6],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-8],ax
		mov	ax,word [bp-4]
		dec	ax
		mov	word [bp-12],ax
		mov	word [bp-2],0
		mov	ax,word [bp-12]
		cmp	ax,word [bp-2]
		jl	..@j17131
		dec	word [bp-2]
	ALIGN 2
..@j17132:
		inc	word [bp-2]
		mov	ax,word [bp-6]
		mul	word [bp-2]
		mov	dx,word [bp+8]
		add	dx,ax
		push	dx
		push	word [bp-8]
		mov	ax,word [bp+4]
		call	ax
		mov	ax,word [bp-12]
		cmp	ax,word [bp-2]
		jg	..@j17132
..@j17131:
..@j17112:
		mov	sp,bp
		pop	bp
		ret	6
