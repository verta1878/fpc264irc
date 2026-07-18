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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_FREE$POINTER
OBJECTS$_$TCOLLECTION_$__$$_FREE$POINTER:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	OBJECTS$_$TCOLLECTION_$__$$_DELETE$POINTER
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+14]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_DELETE$POINTER
