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
	GLOBAL OBJECTS$_$TMEMORYSTREAM_$__$$_WRITE$formal$LONGINT
OBJECTS$_$TMEMORYSTREAM_$__$$_WRITE$formal$LONGINT:
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
		cmp	dx,word [bx+23]
		jg	..@j1423
		jl	..@j1424
		cmp	ax,word [bx+21]
		ja	..@j1423
		jmp	..@j1424
		jmp	..@j1424
..@j1423:
		mov	bx,word [bp+10]
		mov	cx,word [bx+10]
		mov	bx,word [bx+12]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,cx
		adc	dx,bx
		cmp	dx,0
		jne	..@j1426
		cmp	ax,0
		jne	..@j1426
		jmp	..@j1425
..@j1425:
		mov	word [bp-2],1
		jmp	..@j1429
..@j1426:
		mov	bx,word [bp+10]
		mov	ax,word [bx+19]
		mov	dx,0
		push	dx
		push	ax
		mov	bx,word [bp+10]
		mov	cx,word [bx+10]
		mov	bx,word [bx+12]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,cx
		adc	dx,bx
		mov	bx,word [bp+10]
		mov	cx,word [bx+19]
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		sub	cx,1
		sbb	bx,0
		push	bx
		push	cx
		call	fpc_div_longint
		mov	word [bp-2],ax
..@j1429:
		mov	ax,word [bp+10]
		push	ax
		mov	dx,word [bp-2]
		mov	ax,0
		push	ax
		push	dx
		call	OBJECTS$_$TMEMORYSTREAM_$__$$_CHANGELISTSIZE$LONGINT$$BOOLEAN
		test	al,al
		je	..@j1436
		jmp	..@j1437
..@j1436:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-4
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j1437:
..@j1424:
		mov	ax,word [bp+8]
		mov	word [bp-12],ax
		jmp	..@j1451
	ALIGN 2
..@j1450:
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
		mov	cx,word [bp-6]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	dx,0
		cmp	dx,word [bp+6]
		jg	..@j1473
		jl	..@j1474
		cmp	ax,word [bp+4]
		ja	..@j1473
		jmp	..@j1474
		jmp	..@j1474
..@j1473:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
..@j1474:
		mov	bx,word [bp+10]
		mov	bx,word [bx+25]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	dx,word [bx+si]
		mov	ax,word [bp-6]
		add	ax,dx
		mov	word [bp-14],ax
		mov	ax,word [bp-12]
		push	ax
		mov	ax,word [bp-14]
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
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		mov	dx,word [si+10]
		mov	ax,word [si+12]
		cmp	ax,word [bx+8]
		jg	..@j1485
		jl	..@j1486
		cmp	dx,word [bx+6]
		ja	..@j1485
		jmp	..@j1486
		jmp	..@j1486
..@j1485:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [si+10]
		mov	word [bx+6],ax
		mov	ax,word [si+12]
		mov	word [bx+8],ax
..@j1486:
..@j1451:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jg	..@j1489
		jl	..@j1452
		cmp	ax,0
		ja	..@j1489
		jmp	..@j1452
..@j1489:
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		je	..@j1450
		jmp	..@j1452
..@j1452:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_mul_longint
EXTERN	OBJECTS$_$TMEMORYSTREAM_$__$$_CHANGELISTSIZE$LONGINT$$BOOLEAN
EXTERN	fpc_div_longint
