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
	GLOBAL CLASSES$_$TPARSER_$__$$_SOURCEPOS$$LONGINT
CLASSES$_$TPARSER_$__$$_SOURCEPOS$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+4]
		push	word [bx+2]
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	word [bp-8],dx
		mov	word [bp-10],cx
		mov	word [bp-6],bx
		mov	di,ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		cwd
		mov	si,ax
		mov	bx,dx
		mov	cl,15
		sar	bx,cl
		mov	si,bx
		sub	word [bp-8],ax
		sbb	word [bp-10],dx
		sbb	word [bp-6],si
		sbb	di,bx
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	si,ax
		mov	bx,dx
		mov	cl,15
		sar	bx,cl
		mov	si,bx
		add	word [bp-8],ax
		adc	word [bp-10],dx
		adc	word [bp-6],si
		adc	di,bx
		mov	ax,word [bp-8]
		mov	dx,word [bp-10]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
