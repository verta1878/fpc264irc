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
	GLOBAL OBJECTS$_$TRESOURCEFILE_$__$$_DELETE$SHORTSTRING
OBJECTS$_$TRESOURCEFILE_$__$$_DELETE$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,260
		mov	dx,word [bp+4]
		lea	ax,[bp-260]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp+6]
		lea	ax,[bx+13]
		push	ax
		lea	ax,[bp-260]
		push	ax
		lea	ax,[bp-4]
		push	ax
		mov	bx,word [bp+6]
		lea	bx,[bx+13]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		test	al,al
		jne	..@j2848
		jmp	..@j2849
..@j2848:
		mov	bx,word [bp+6]
		lea	ax,[bx+13]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+13]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
		push	ax
		call	OBJECTS$_$TCOLLECTION_$__$$_FREE$POINTER
		mov	bx,word [bp+6]
		mov	byte [bx+4],1
..@j2849:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_FREE$POINTER
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
EXTERN	fpc_shortstr_to_shortstr
