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
	GLOBAL FGL$_$TFPSLIST_$__$$_ADD$POINTER$$SMALLINT
FGL$_$TFPSLIST_$__$$_ADD$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [si+6]
		je	..@j236
		jmp	..@j237
..@j236:
		push	word [bp+6]
		call	FGL$_$TFPSLIST_$__$$_EXPAND$$TFPSLIST
..@j237:
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mul	word [bx+8]
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		add	dx,ax
		push	dx
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		inc	word [bx+4]
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSLIST_$__$$_EXPAND$$TFPSLIST
