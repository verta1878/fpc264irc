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
	GLOBAL OBJECTS$_$TSTRINGLIST_$__$$_GET$LONGWORD$$SHORTSTRING
OBJECTS$_$TSTRINGLIST_$__$$_GET$LONGWORD$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	byte [bp-258],0
		mov	bx,word [bp+10]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,0
		jg	..@j3000
		jl	..@j3001
		cmp	dx,0
		ja	..@j3000
		jmp	..@j3001
..@j3000:
		mov	word [bp-2],0
		jmp	..@j3005
	ALIGN 2
..@j3004:
		mov	bx,word [bp+10]
		mov	bx,word [bx+12]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	ax,word [bx+si]
		mov	cx,word [bx+si+2]
		mov	dx,word [bp+4]
		mov	di,word [bp+6]
		sub	dx,ax
		sbb	di,cx
		mov	bx,word [bp+10]
		mov	bx,word [bx+12]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	cx,word [bx+si+4]
		mov	ax,0
		cmp	di,ax
		jb	..@j3007
		ja	..@j3008
		cmp	dx,cx
		jb	..@j3007
		jmp	..@j3008
..@j3007:
		mov	ax,word [bp+10]
		push	ax
		lea	ax,[bp-258]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+12]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	ax,word [bx+si+6]
		mov	dx,0
		push	dx
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+12]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	cx,word [bx+si]
		mov	bx,word [bx+si+2]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		sub	ax,cx
		sbb	dx,bx
		push	dx
		push	ax
		call	OBJECTS$_$TSTRINGLIST_$__$$_READSTR$SHORTSTRING$LONGINT$LONGINT
..@j3008:
		inc	word [bp-2]
..@j3005:
		mov	bx,word [bp+10]
		mov	dx,word [bp-2]
		mov	ax,0
		cmp	ax,word [bx+10]
		jl	..@j3017
		jg	..@j3006
		cmp	dx,word [bx+8]
		jb	..@j3017
		jmp	..@j3006
		jmp	..@j3006
..@j3017:
		cmp	byte [bp-258],0
		je	..@j3004
		jmp	..@j3006
..@j3006:
..@j3001:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-258]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_shortstr_to_shortstr
EXTERN	OBJECTS$_$TSTRINGLIST_$__$$_READSTR$SHORTSTRING$LONGINT$LONGINT
