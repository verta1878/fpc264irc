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
	GLOBAL OBJECTS$_$TSTRINGLIST_$__$$_READSTR$SHORTSTRING$LONGINT$LONGINT
OBJECTS$_$TSTRINGLIST_$__$$_READSTR$SHORTSTRING$LONGINT$LONGINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+14]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+14]
		mov	cx,word [bx+4]
		mov	bx,word [bx+6]
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		add	ax,cx
		adc	dx,bx
		push	dx
		push	ax
		mov	bx,word [bp+14]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+20]
		call	ax
		add	word [bp+4],1
		adc	word [bp+6],0
	ALIGN 2
..@j3030:
		mov	bx,word [bp+14]
		mov	ax,word [bx+2]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+14]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	bx,word [bp+14]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+12]
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp+12]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		push	ax
		push	dx
		mov	bx,word [bp+14]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		sub	word [bp+4],1
		sbb	word [bp+6],0
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j3030
		cmp	ax,0
		jne	..@j3030
		jmp	..@j3032
..@j3032:
		mov	sp,bp
		pop	bp
		ret	12
