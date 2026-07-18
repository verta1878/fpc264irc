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
	GLOBAL OBJECTS$_$TMEMORYSTREAM_$__$$_TRUNCATE
OBJECTS$_$TMEMORYSTREAM_$__$$_TRUNCATE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx+2],0
		je	..@j1337
		jmp	..@j1338
..@j1337:
		mov	bx,word [bp+4]
		mov	dx,word [bx+10]
		mov	ax,word [bx+12]
		cmp	ax,0
		jne	..@j1340
		cmp	dx,0
		jne	..@j1340
		jmp	..@j1339
..@j1339:
		mov	word [bp-2],1
		jmp	..@j1343
..@j1340:
		mov	bx,word [bp+4]
		mov	ax,word [bx+19]
		mov	dx,0
		push	dx
		push	ax
		mov	bx,word [bp+4]
		mov	si,word [bx+19]
		mov	dx,0
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		mov	cx,word [bx+12]
		add	ax,si
		adc	cx,dx
		sub	ax,1
		sbb	cx,0
		push	cx
		push	ax
		call	fpc_div_longint
		mov	word [bp-2],ax
..@j1343:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-2]
		mov	dx,0
		push	dx
		push	ax
		call	OBJECTS$_$TMEMORYSTREAM_$__$$_CHANGELISTSIZE$LONGINT$$BOOLEAN
		test	al,al
		jne	..@j1350
		jmp	..@j1351
..@j1350:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [si+10]
		mov	word [bx+6],ax
		mov	ax,word [si+12]
		mov	word [bx+8],ax
		jmp	..@j1358
..@j1351:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j1358:
..@j1338:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	OBJECTS$_$TMEMORYSTREAM_$__$$_CHANGELISTSIZE$LONGINT$$BOOLEAN
EXTERN	fpc_div_longint
