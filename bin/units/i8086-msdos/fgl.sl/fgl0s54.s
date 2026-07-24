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
	GLOBAL FGL$_$TFPSMAP_$__$$_LINEARINDEXOF$POINTER$$SMALLINT
FGL$_$TFPSMAP_$__$$_LINEARINDEXOF$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],0
		push	word [bp+6]
		call	FGL$_$TFPSLIST_$__$$_GETFIRST$$POINTER
		mov	word [bp-4],ax
		jmp	..@j1370
	ALIGN 2
..@j1369:
		inc	word [bp-2]
		mov	bx,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,word [bp-4]
		add	ax,dx
		mov	word [bp-4],ax
..@j1370:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp-2]
		jg	..@j1374
		jmp	..@j1371
..@j1374:
		mov	bx,word [bp+6]
		push	word [bx+19]
		push	word [bp-4]
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	ax,word [bx+17]
		call	ax
		test	ax,ax
		jne	..@j1369
		jmp	..@j1371
..@j1371:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp-2]
		je	..@j1381
		jmp	..@j1382
..@j1381:
		mov	word [bp-2],-1
..@j1382:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSLIST_$__$$_GETFIRST$$POINTER
