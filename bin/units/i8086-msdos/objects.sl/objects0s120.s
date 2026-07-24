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
	GLOBAL OBJECTS$_$TRESOURCEFILE_$__$$_FLUSH
OBJECTS$_$TRESOURCEFILE_$__$$_FLUSH:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		cmp	byte [bx+4],0
		jne	..@j2793
		jmp	..@j2792
..@j2793:
		mov	bx,word [bp+4]
		cmp	word [bx+2],0
		jne	..@j2791
		jmp	..@j2792
..@j2791:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		push	ax
		mov	di,word [bp+4]
		mov	bx,word [bp+4]
		mov	si,word [di+5]
		mov	dx,word [di+7]
		mov	ax,word [bx+9]
		mov	cx,word [bx+11]
		add	ax,si
		adc	cx,dx
		push	cx
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+20]
		call	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+13]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		push	ax
		call	OBJECTS$_$TSORTEDCOLLECTION_$__$$_STORE$TSTREAM
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+8]
		call	ax
		mov	bx,word [bp+4]
		mov	cx,word [bx+5]
		mov	bx,word [bx+7]
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,8
		adc	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		push	ax
		mov	ax,word TC_$OBJECTS_$$_RSTREAMBACKLINK
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		push	ax
		lea	ax,[bp-8]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+7]
		push	word [bx+5]
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+20]
		call	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		push	ax
		mov	ax,word TC_$OBJECTS_$$_RSTREAMMAGIC
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		push	ax
		lea	ax,[bp-4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+9]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+16]
		call	ax
..@j2792:
		mov	bx,word [bp+4]
		mov	byte [bx+4],0
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$OBJECTS_$$_RSTREAMMAGIC
EXTERN	TC_$OBJECTS_$$_RSTREAMBACKLINK
EXTERN	OBJECTS$_$TSORTEDCOLLECTION_$__$$_STORE$TSTREAM
