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
	GLOBAL FGL$_$TFPSLIST_$__$$_PUT$SMALLINT$POINTER
FGL$_$TFPSLIST_$__$$_PUT$SMALLINT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+8]
		push	word [bp+6]
		call	FGL$_$TFPSLIST_$__$$_CHECKINDEX$SMALLINT
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mul	word [bx+8]
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-2],dx
		cmp	word [bp-2],0
		jne	..@j116
		jmp	..@j117
..@j116:
		push	word [bp+8]
		push	word [bp-2]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
..@j117:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_INTERNALPUT$SMALLINT$POINTER
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FGL$_$TFPSLIST_$__$$_INTERNALPUT$SMALLINT$POINTER
EXTERN	FGL$_$TFPSLIST_$__$$_CHECKINDEX$SMALLINT
