BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES_$$_COLLECTIONSEQUAL$TCOLLECTION$TCOLLECTION$TCOMPONENT$TCOMPONENT$$BOOLEAN
CLASSES_$$_COLLECTIONSEQUAL$TCOLLECTION$TCOLLECTION$TCOMPONENT$TCOMPONENT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,44
		mov	byte [bp-1],0
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		mov	dx,ax
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		cmp	dx,ax
		jne	..@j15380
		jmp	..@j15382
..@j15382:
		push	word [bp+10]
		call	CLASSES$_$TCOLLECTION_$__$$_GETCOUNT$$SMALLINT
		mov	word [bp-36],ax
		push	word [bp+8]
		call	CLASSES$_$TCOLLECTION_$__$$_GETCOUNT$$SMALLINT
		cmp	word [bp-36],ax
		jne	..@j15380
		jmp	..@j15381
..@j15380:
		jmp	..@j15374
..@j15381:
		push	word [bp+10]
		call	CLASSES$_$TCOLLECTION_$__$$_GETCOUNT$$SMALLINT
		test	ax,ax
		je	..@j15391
		jmp	..@j15392
..@j15391:
		mov	byte [bp-1],1
		jmp	..@j15374
..@j15392:
		mov	ax,word VMT_$CLASSES_$$_TMEMORYSTREAM
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	word [bp-4],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j15403
		mov	ax,word VMT_$CLASSES_$$_TMEMORYSTREAM
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	word [bp-6],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j15412
		push	bp
		push	word [bp-4]
		push	word [bp+10]
		push	word [bp+6]
		call	CLASSES$_$COLLECTIONSEQUAL$crc0ECFEF77_$$_STREAM_COLLECTION$TSTREAM$TCOLLECTION$TCOMPONENT
		push	bp
		push	word [bp-6]
		push	word [bp+8]
		push	word [bp+4]
		call	CLASSES$_$COLLECTIONSEQUAL$crc0ECFEF77_$$_STREAM_COLLECTION$TSTREAM$TCOLLECTION$TCOMPONENT
		push	word [bp-4]
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		mov	word [bp-44],dx
		mov	word [bp-42],cx
		mov	word [bp-40],bx
		mov	word [bp-38],ax
		push	word [bp-6]
		mov	bx,word [bp-6]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		mov	si,cx
		mov	cx,bx
		cmp	word [bp-38],ax
		jne	..@j15432
		cmp	word [bp-40],cx
		jne	..@j15432
		cmp	word [bp-42],si
		jne	..@j15432
		cmp	word [bp-44],dx
		jne	..@j15432
		jmp	..@j15433
..@j15433:
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp-6]
		mov	ax,word [bx+2]
		push	ax
		push	word [bp-4]
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		push	dx
		call	SYSTEM_$$_COMPARECHAR$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j15431
		jmp	..@j15432
..@j15431:
		mov	byte [bp-1],1
		jmp	..@j15446
..@j15432:
		mov	byte [bp-1],0
..@j15446:
..@j15412:
		call	FPC_POPADDRSTACK
		push	word [bp-6]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j15413
		call	FPC_RERAISE
..@j15413:
..@j15403:
		call	FPC_POPADDRSTACK
		push	word [bp-4]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j15404
		call	FPC_RERAISE
..@j15404:
..@j15374:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_COMPARECHAR$formal$formal$SMALLINT$$SMALLINT
EXTERN	CLASSES$_$COLLECTIONSEQUAL$crc0ECFEF77_$$_STREAM_COLLECTION$TSTREAM$TCOLLECTION$TCOMPONENT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TMEMORYSTREAM
EXTERN	CLASSES$_$TCOLLECTION_$__$$_GETCOUNT$$SMALLINT
