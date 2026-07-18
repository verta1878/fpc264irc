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
	GLOBAL FGL$_$TFPSMAP_$__$$_INDEXOF$POINTER$$SMALLINT
FGL$_$TFPSMAP_$__$$_INDEXOF$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		cmp	byte [bx+16],0
		jne	..@j1387
		jmp	..@j1388
..@j1387:
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-2]
		push	ax
		call	FGL$_$TFPSMAP_$__$$_FIND$POINTER$SMALLINT$$BOOLEAN
		test	al,al
		je	..@j1389
		jmp	..@j1390
..@j1389:
		mov	word [bp-2],-1
..@j1390:
		jmp	..@j1399
..@j1388:
		push	word [bp+6]
		push	word [bp+4]
		call	FGL$_$TFPSMAP_$__$$_LINEARINDEXOF$POINTER$$SMALLINT
		mov	word [bp-2],ax
..@j1399:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSMAP_$__$$_LINEARINDEXOF$POINTER$$SMALLINT
EXTERN	FGL$_$TFPSMAP_$__$$_FIND$POINTER$SMALLINT$$BOOLEAN
