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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_ATFREE$LONGINT
OBJECTS$_$TCOLLECTION_$__$$_ATFREE$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
		mov	word [bp-2],ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	OBJECTS$_$TCOLLECTION_$__$$_ATDELETE$LONGINT
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-2]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+14]
		call	ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_ATDELETE$LONGINT
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
