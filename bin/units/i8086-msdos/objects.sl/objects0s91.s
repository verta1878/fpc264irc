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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_PUTITEM$TSTREAM$POINTER
OBJECTS$_$TCOLLECTION_$__$$_PUTITEM$TSTREAM$POINTER:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	OBJECTS$_$TSTREAM_$__$$_PUT$POBJECT
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	OBJECTS$_$TSTREAM_$__$$_PUT$POBJECT
