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
	GLOBAL OBJECTS$_$TBUFSTREAM_$__$$_CLOSE
OBJECTS$_$TBUFSTREAM_$__$$_CLOSE:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+16]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		call	OBJECTS$_$TDOSSTREAM_$__$$_CLOSE
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	OBJECTS$_$TDOSSTREAM_$__$$_CLOSE
