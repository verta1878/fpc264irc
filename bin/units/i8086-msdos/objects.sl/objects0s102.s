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
	GLOBAL OBJECTS$_$TSTRINGCOLLECTION_$__$$_FREEITEM$POINTER
OBJECTS$_$TSTRINGCOLLECTION_$__$$_FREEITEM$POINTER:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		call	OBJECTS_$$_DISPOSESTR$PSHORTSTRING
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	OBJECTS_$$_DISPOSESTR$PSHORTSTRING
