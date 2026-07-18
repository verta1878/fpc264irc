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
	GLOBAL SYSTEM_$$_RECORDRTTI$POINTER$POINTER$TRTTIPROC
SYSTEM_$$_RECORDRTTI$POINTER$POINTER$TRTTIPROC:
		push	bp
		mov	bp,sp
		sub	sp,14
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
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		mov	ax,word [bx+6]
		mov	word [bp-2],ax
		add	word [bp+6],8
		mov	ax,word [bp-4]
		mov	word [bp-14],ax
		mov	ax,word [bp-2]
		mov	word [bp-12],ax
		mov	word [bp-8],1
		mov	word [bp-6],0
		mov	ax,word [bp-12]
		cmp	ax,word [bp-6]
		jl	..@j17104
		jg	..@j17106
		mov	ax,word [bp-14]
		cmp	ax,word [bp-8]
		jb	..@j17104
..@j17106:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j17105:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bp+8]
		add	ax,dx
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,word [bp+4]
		call	ax
		add	word [bp+6],4
		mov	ax,word [bp-12]
		cmp	ax,word [bp-6]
		jg	..@j17105
		jl	..@j17111
		mov	ax,word [bp-14]
		cmp	ax,word [bp-8]
		ja	..@j17105
..@j17111:
..@j17104:
		mov	sp,bp
		pop	bp
		ret	6
