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
	GLOBAL OBJECTS$_$TSORTEDCOLLECTION_$__$$_STORE$TSTREAM
OBJECTS$_$TSORTEDCOLLECTION_$__$$_STORE$TSTREAM:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	OBJECTS$_$TCOLLECTION_$__$$_STORE$TSTREAM
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+16]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_STORE$TSTREAM
