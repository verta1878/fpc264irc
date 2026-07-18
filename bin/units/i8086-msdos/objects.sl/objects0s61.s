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
	GLOBAL OBJECTS$_$TMEMORYSTREAM_$__$$_INIT$LONGINT$WORD$$LONGBOOL
OBJECTS$_$TMEMORYSTREAM_$__$$_INIT$LONGINT$WORD$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,30
		push	word [bp+12]
		lea	ax,[bp+10]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_constructor
		mov	word [bp+12],ax
		cmp	word [bp+12],0
		je	..@j1269
		jmp	..@j1270
..@j1269:
		jmp	..@j1259
..@j1270:
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1273
		mov	ax,word [bp+12]
		push	ax
		mov	ax,0
		push	ax
		call	OBJECTS$_$TSTREAM_$__$$_INIT$$LONGBOOL
		cmp	word [bp+4],0
		je	..@j1281
		jmp	..@j1282
..@j1281:
		mov	bx,word [bp+12]
		mov	word [bx+19],8192
		jmp	..@j1285
..@j1282:
		mov	bx,word [bp+12]
		mov	ax,word [bp+4]
		mov	word [bx+19],ax
..@j1285:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		cmp	dx,0
		jne	..@j1289
		cmp	ax,0
		jne	..@j1289
		jmp	..@j1288
..@j1288:
		mov	word [bp-2],1
		jmp	..@j1292
..@j1289:
		mov	bx,word [bp+12]
		mov	dx,word [bx+19]
		mov	ax,0
		push	ax
		push	dx
		mov	bx,word [bp+12]
		mov	cx,word [bx+19]
		mov	bx,0
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		add	ax,cx
		adc	dx,bx
		sub	ax,1
		sbb	dx,0
		push	dx
		push	ax
		call	fpc_div_longint
		mov	word [bp-2],ax
..@j1292:
		mov	ax,word [bp+12]
		push	ax
		mov	dx,word [bp-2]
		mov	ax,0
		push	ax
		push	dx
		call	OBJECTS$_$TMEMORYSTREAM_$__$$_CHANGELISTSIZE$LONGINT$$BOOLEAN
		test	al,al
		je	..@j1299
		jmp	..@j1300
..@j1299:
		mov	ax,word [bp+12]
		push	ax
		mov	ax,-2
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j1300:
..@j1273:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1275
		mov	ax,1
		push	ax
		lea	ax,[bp-28]
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1311
		cmp	word [bp+10],0
		jne	..@j1312
		jmp	..@j1313
..@j1312:
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+10]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j1313:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j1311:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1318
		call	FPC_RAISE_NESTED
..@j1318:
		call	FPC_DONEEXCEPTION
		jmp	..@j1275
..@j1275:
..@j1259:
		mov	ax,word [bp+12]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	OBJECTS$_$TMEMORYSTREAM_$__$$_CHANGELISTSIZE$LONGINT$$BOOLEAN
EXTERN	fpc_div_longint
EXTERN	OBJECTS$_$TSTREAM_$__$$_INIT$$LONGBOOL
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
