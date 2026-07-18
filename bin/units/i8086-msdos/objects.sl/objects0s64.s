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
	GLOBAL OBJECTS$_$TMEMORYSTREAM_$__$$_READ$formal$LONGINT
OBJECTS$_$TMEMORYSTREAM_$__$$_READ$formal$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	bx,word [bp+10]
		mov	cx,word [bx+10]
		mov	bx,word [bx+12]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,cx
		adc	dx,bx
		mov	bx,word [bp+10]
		cmp	dx,word [bx+8]
		jg	..@j1367
		jl	..@j1368
		cmp	ax,word [bx+6]
		ja	..@j1367
		jmp	..@j1368
		jmp	..@j1368
..@j1367:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-3
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j1368:
		mov	ax,word [bp+8]
		mov	word [bp-12],ax
		jmp	..@j1378
	ALIGN 2
..@j1377:
		mov	bx,word [bp+10]
		mov	dx,word [bx+19]
		mov	ax,0
		push	ax
		push	dx
		mov	bx,word [bp+10]
		push	word [bx+12]
		push	word [bx+10]
		call	fpc_div_longint
		mov	word [bp-4],ax
		mov	ax,word [bp-4]
		mov	dx,0
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		push	word [bp-8]
		push	word [bp-10]
		mov	bx,word [bp+10]
		mov	dx,word [bx+19]
		mov	ax,0
		push	ax
		push	dx
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	bx,word [bp+10]
		mov	ax,word [bx+10]
		mov	dx,word [bx+12]
		mov	cx,word [bp-10]
		mov	bx,word [bp-8]
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-6],ax
		mov	bx,word [bp+10]
		mov	ax,word [bx+19]
		mov	dx,0
		mov	bx,word [bp-6]
		mov	cx,0
		sub	ax,bx
		sbb	dx,cx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	dx,0
		cmp	dx,word [bp+6]
		jg	..@j1400
		jl	..@j1401
		cmp	ax,word [bp+4]
		ja	..@j1400
		jmp	..@j1401
		jmp	..@j1401
..@j1400:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
..@j1401:
		mov	bx,word [bp+10]
		mov	bx,word [bx+25]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	dx,word [bx+si]
		mov	ax,word [bp-6]
		add	ax,dx
		mov	word [bp-14],ax
		mov	ax,word [bp-14]
		push	ax
		mov	ax,word [bp-12]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-2]
		mov	dx,0
		mov	bx,word [bp+10]
		add	word [bx+10],ax
		adc	word [bx+12],dx
		mov	ax,word [bp-2]
		add	word [bp-12],ax
		mov	ax,word [bp-2]
		mov	dx,0
		sub	word [bp+4],ax
		sbb	word [bp+6],dx
..@j1378:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jg	..@j1412
		jl	..@j1379
		cmp	ax,0
		ja	..@j1412
		jmp	..@j1379
..@j1412:
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		je	..@j1377
		jmp	..@j1379
..@j1379:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j1413
		cmp	ax,0
		jne	..@j1413
		jmp	..@j1414
..@j1413:
		mov	ax,word [bp-12]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
..@j1414:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_mul_longint
EXTERN	fpc_div_longint
