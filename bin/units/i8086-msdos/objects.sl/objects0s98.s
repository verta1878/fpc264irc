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
	GLOBAL OBJECTS$_$TSORTEDCOLLECTION_$__$$_INSERT$POINTER
OBJECTS$_$TSORTEDCOLLECTION_$__$$_INSERT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		push	ax
		lea	ax,[bp-4]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		test	al,al
		je	..@j2326
		jmp	..@j2328
..@j2328:
		mov	bx,word [bp+6]
		cmp	byte [bx+16],0
		jne	..@j2326
		jmp	..@j2327
..@j2326:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp+4]
		call	OBJECTS$_$TCOLLECTION_$__$$_ATINSERT$LONGINT$POINTER
..@j2327:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_ATINSERT$LONGINT$POINTER
