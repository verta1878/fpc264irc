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
	GLOBAL OBJECTS$_$TRESOURCEFILE_$__$$_KEYAT$LONGINT$$SHORTSTRING
OBJECTS$_$TRESOURCEFILE_$__$$_KEYAT$LONGINT$$SHORTSTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		mov	bx,word [bp+10]
		lea	ax,[bx+13]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
		mov	bx,ax
		lea	ax,[bx+8]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_shortstr_to_shortstr
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
