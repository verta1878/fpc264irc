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
	GLOBAL fpc_chararray_to_shortstr
fpc_chararray_to_shortstr:
	GLOBAL FPC_CHARARRAY_TO_SHORTSTR
FPC_CHARARRAY_TO_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+6]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word [bp+10]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-2]
		jl	..@j1321
		jg	..@j1322
		cmp	cx,word [bp-4]
		jbe	..@j1321
		jmp	..@j1322
		jmp	..@j1322
..@j1321:
		mov	ax,word [bp+10]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j1325
..@j1322:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jl	..@j1326
		jg	..@j1327
		cmp	ax,0
		jb	..@j1326
		jmp	..@j1327
..@j1326:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j1327:
..@j1325:
		cmp	byte [bp+4],0
		jne	..@j1330
		jmp	..@j1331
..@j1330:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,0
		jl	..@j1340
		jg	..@j1341
		cmp	ax,0
		jb	..@j1340
		jmp	..@j1341
..@j1340:
		mov	al,byte [bp-4]
		mov	byte [bp-9],al
		jmp	..@j1344
..@j1341:
		mov	al,byte [bp-8]
		mov	byte [bp-9],al
..@j1344:
		jmp	..@j1347
..@j1331:
		mov	al,byte [bp-4]
		mov	byte [bp-9],al
..@j1347:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+12]
		lea	ax,[bx+1]
		push	ax
		mov	al,byte [bp-9]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+12]
		mov	al,byte [bp-9]
		mov	byte [bx],al
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
