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
	GLOBAL OBJECTS$_$TRESOURCEFILE_$_SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM_$$_DOCOPYRESOURCE$PRESOURCEITEM
OBJECTS$_$TRESOURCEFILE_$_SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM_$$_DOCOPYRESOURCE$PRESOURCEITEM:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+6]
		mov	di,word [bx+8]
		mov	bx,word [bp+4]
		mov	si,word [di+5]
		mov	dx,word [di+7]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		add	ax,si
		adc	cx,dx
		push	cx
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+20]
		call	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		mov	ax,word [bx+8]
		call	ax
		mov	bx,word [bp+6]
		mov	cx,word [bx-6]
		mov	bx,word [bx-4]
		sub	ax,cx
		sbb	dx,bx
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+6]
		push	word [bx+4]
		call	OBJECTS$_$TSTREAM_$__$$_COPYFROM$TSTREAM$LONGINT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	OBJECTS$_$TSTREAM_$__$$_COPYFROM$TSTREAM$LONGINT
