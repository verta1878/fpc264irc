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
	GLOBAL OBJECTS$_$TRESOURCEFILE_$__$$_SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM
OBJECTS$_$TRESOURCEFILE_$__$$_SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		cmp	word [bp+6],0
		jne	..@j2739
		jmp	..@j2738
..@j2739:
		mov	bx,word [bp+8]
		cmp	word [bx+2],0
		jne	..@j2737
		jmp	..@j2738
..@j2737:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+8]
		call	ax
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		cmp	byte [bp+4],0
		jne	..@j2744
		jmp	..@j2745
..@j2744:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		add	ax,12
		adc	dx,0
		push	dx
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+20]
		call	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+13]
		push	ax
		mov	ax,word OBJECTS$_$TRESOURCEFILE_$_SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM_$$_DOCOPYRESOURCE$PRESOURCEITEM
		push	ax
		call	OBJECTS$_$TCOLLECTION_$__$$_FOREACH$NEARPOINTER
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+8]
		call	ax
		mov	cx,word [bp-6]
		mov	bx,word [bp-4]
		sub	ax,cx
		sbb	dx,bx
		mov	bx,word [bp+8]
		mov	word [bx+9],ax
		mov	word [bx+11],dx
		jmp	..@j2758
..@j2745:
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+7]
		push	word [bx+5]
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+20]
		call	ax
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+11]
		push	word [bx+9]
		call	OBJECTS$_$TSTREAM_$__$$_COPYFROM$TSTREAM$LONGINT
..@j2758:
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mov	word [bx+2],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	word [bx+5],ax
		mov	ax,word [bp-4]
		mov	word [bx+7],ax
		mov	bx,word [bp+8]
		mov	byte [bx+4],1
..@j2738:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	OBJECTS$_$TSTREAM_$__$$_COPYFROM$TSTREAM$LONGINT
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_FOREACH$NEARPOINTER
EXTERN	OBJECTS$_$TRESOURCEFILE_$_SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM_$$_DOCOPYRESOURCE$PRESOURCEITEM
