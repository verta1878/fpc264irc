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
	GLOBAL CLASSES$_$TSTREAM_$__$$_FIXUPRESOURCEHEADER$LONGINT
CLASSES$_$TSTREAM_$__$$_FIXUPRESOURCEHEADER$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,14
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	word [bp-12],dx
		mov	word [bp-14],cx
		mov	word [bp-10],bx
		mov	di,word [bp+4]
		mov	dx,word [bp+6]
		mov	bx,di
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		sub	word [bp-12],di
		sbb	word [bp-14],dx
		sbb	word [bp-10],bx
		sbb	ax,si
		mov	dx,word [bp-12]
		mov	ax,word [bp-14]
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		push	word [bp+8]
		mov	ax,word [bp+4]
		mov	cx,word [bp+6]
		sub	ax,4
		sbb	cx,0
		mov	bx,ax
		mov	dx,cx
		mov	bx,ax
		mov	dx,cx
		mov	si,bx
		mov	ax,dx
		mov	cl,15
		sar	ax,cl
		mov	si,ax
		push	ax
		push	si
		push	dx
		push	bx
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		push	word [bp+8]
		push	word [bp-6]
		push	word [bp-8]
		call	CLASSES$_$TSTREAM_$__$$_WRITEDWORD$LONGWORD
		push	word [bp+8]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	si,word [bp-4]
		mov	cx,word [bp-2]
		add	si,ax
		adc	cx,dx
		mov	dx,si
		mov	bx,cx
		mov	dx,si
		mov	bx,cx
		mov	si,dx
		mov	ax,bx
		mov	cl,15
		sar	ax,cl
		mov	si,ax
		push	ax
		push	si
		push	bx
		push	dx
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEDWORD$LONGWORD
