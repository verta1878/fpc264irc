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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_EXCHANGEITEMSINT$SMALLINT$SMALLINT
CLASSES$_$TSTRINGLIST_$__$$_EXCHANGEITEMSINT$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+6]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	word [bp-2],ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+6]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si+2]
		mov	word [bp-4],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+20]
		mov	word [bp-8],ax
		mov	ax,word [bp+6]
		mov	di,ax
		mov	cl,2
		shl	di,cl
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	bx,word [bp-8]
		mov	word [bx+di],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+20]
		mov	word [bp-6],ax
		mov	ax,word [bp+6]
		mov	di,ax
		mov	cl,2
		shl	di,cl
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si+2]
		mov	bx,word [bp-6]
		mov	word [bx+di+2],ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-2]
		mov	word [bx+si],ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-4]
		mov	word [bx+si+2],ax
		mov	sp,bp
		pop	bp
		ret	6
