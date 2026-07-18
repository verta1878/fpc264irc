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
	GLOBAL FGL$_$TFPSLIST_$__$$_EXTRACT$POINTER$POINTER
FGL$_$TFPSLIST_$__$$_EXTRACT$POINTER$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+8]
		push	word [bp+6]
		call	FGL$_$TFPSLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jge	..@j351
		jmp	..@j352
..@j351:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mul	word [bx+8]
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-4],dx
		mov	ax,word [bp-4]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+8]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-4]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+8]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLBYTE$formal$SMALLINT$BYTE
		push	word [bp+8]
		push	word [bp-2]
		call	FGL$_$TFPSLIST_$__$$_DELETE$SMALLINT
		jmp	..@j373
..@j352:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+8]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLBYTE$formal$SMALLINT$BYTE
..@j373:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FGL$_$TFPSLIST_$__$$_DELETE$SMALLINT
EXTERN	SYSTEM_$$_FILLBYTE$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FGL$_$TFPSLIST_$__$$_INDEXOF$POINTER$$SMALLINT
