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
	GLOBAL CLASSES$_$TSTREAM_$__$$_FAKESEEKFORWARD$INT64$TSEEKORIGIN$INT64
CLASSES$_$TSTREAM_$__$$_FAKESEEKFORWARD$INT64$TSEEKORIGIN$INT64:
		push	bp
		mov	bp,sp
		sub	sp,14
		cmp	word [bp+12],0
		je	..@j926
		jmp	..@j927
..@j926:
		mov	ax,word [bp+4]
		mov	word [bp-14],ax
		mov	ax,word [bp+6]
		mov	word [bp-12],ax
		mov	bx,word [bp+8]
		mov	si,word [bp+10]
		mov	dx,word [bp+16]
		mov	ax,word [bp+18]
		mov	di,word [bp+20]
		mov	cx,word [bp+22]
		sub	dx,word [bp-14]
		sbb	ax,word [bp-12]
		sbb	di,bx
		sbb	cx,si
		mov	word [bp+16],dx
		mov	word [bp+18],ax
		mov	word [bp+20],di
		mov	word [bp+22],cx
..@j927:
		mov	ax,word [bp+16]
		mov	dx,word [bp+18]
		mov	cx,word [bp+20]
		mov	bx,word [bp+22]
		cmp	bx,0
		jl	..@j928
		jg	..@j930
		cmp	cx,0
		jb	..@j928
		ja	..@j930
		cmp	dx,0
		jb	..@j928
		ja	..@j930
		cmp	ax,0
		jb	..@j928
		jmp	..@j930
..@j930:
		cmp	word [bp+12],2
		je	..@j928
		jmp	..@j929
..@j928:
		push	word [bp+24]
		mov	bx,word [bp+24]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
..@j929:
		mov	dx,word [bp+16]
		mov	bx,word [bp+18]
		mov	cx,word [bp+20]
		mov	ax,word [bp+22]
		cmp	ax,0
		jg	..@j933
		jl	..@j934
		cmp	cx,0
		ja	..@j933
		jb	..@j934
		cmp	bx,0
		ja	..@j933
		jb	..@j934
		cmp	dx,0
		ja	..@j933
		jmp	..@j934
..@j933:
		push	word [bp+24]
		push	word [bp+22]
		push	word [bp+20]
		push	word [bp+18]
		push	word [bp+16]
		call	CLASSES$_$TSTREAM_$__$$_DISCARD$INT64
..@j934:
		mov	sp,bp
		pop	bp
		ret	22
EXTERN	CLASSES$_$TSTREAM_$__$$_DISCARD$INT64
